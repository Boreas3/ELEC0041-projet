Include "transfo_3p_shell_common.pro";

DefineConstant[
  ConductorType = {2, Choices{1 = "Massive", 2 = "Coil"}, Highlight "Blue",
    Name "Parameters/01Conductor type"}
  Freq = {50, Name "Frequency"}
  val_E_in = {60e3, Name "Voltage at the primary side"}
  mur_Core = {1000, Min 1, Max 10000, Step 1,
    Name "Parameters/Core relative permeability"}
  n_PRIM = {500, Min 100, Max 1000, Step 100, Name "Number of turn - primary side"}
  V_ratio = {25, Name "Transformer ratio"}
];

Group {
  // Physical regions:
  Air = Region[AIR_EXT];
  Sur_Air_Ext = Region[SUR_AIR_EXT]; // exterior boundary
  Core = Region[{CORE, CORE_BASE}]; // magnetic core of the transformer, assumed non-conducting
  
  // First phase
  Coil_1_PRIM_P = Region[COIL_1_PRIM_PLUS]; // 1st phase, 1st coil, positive side
  Coil_1_PRIM_M = Region[COIL_1_PRIM_MINUS]; // 1st phase, 1st coil, negative side
  Coil_1_PRIM = Region[{Coil_1_PRIM_P, Coil_1_PRIM_M}];
  Coil_1_SECOND_P = Region[COIL_1_SECOND_PLUS]; // 1st phase, 2nd coil, positive side
  Coil_1_SECOND_M = Region[COIL_1_SECOND_MINUS]; // 1st phase, 2nd coil, negative side
  Coil_1_SECOND = Region[{Coil_1_SECOND_P, Coil_1_SECOND_M}];
  Coils_1 = Region[{Coil_1_PRIM, Coil_1_SECOND}];

  // Second phase
  Coil_2_PRIM_P = Region[COIL_2_PRIM_PLUS]; // 2nd phase, 1st coil, positive side
  Coil_2_PRIM_M = Region[COIL_2_PRIM_MINUS]; // 2nd phase, 1st coil, negative side
  Coil_2_PRIM = Region[{Coil_2_PRIM_P, Coil_2_PRIM_M}];
  Coil_2_SECOND_P = Region[COIL_2_SECOND_PLUS]; // 2nd phase, 2nd coil, positive side
  Coil_2_SECOND_M = Region[COIL_2_SECOND_MINUS]; // 2nd phase, 2nd coil, negative side
  Coil_2_SECOND = Region[{Coil_2_SECOND_P, Coil_2_SECOND_M}];
  Coils_2 = Region[{Coil_2_PRIM, Coil_2_SECOND}];

  // Third phase
  Coil_3_PRIM_P = Region[COIL_3_PRIM_PLUS]; // 3rd phase, 1st coil, positive side
  Coil_3_PRIM_M = Region[COIL_3_PRIM_MINUS]; // 3rd phase, 1st coil, negative side
  Coil_3_PRIM = Region[{Coil_3_PRIM_P, Coil_3_PRIM_M}];
  Coil_3_SECOND_P = Region[COIL_3_SECOND_PLUS]; // 3rd phase, 2nd coil, positive side
  Coil_3_SECOND_M = Region[COIL_3_SECOND_MINUS]; // 3rd phase, 2nd coil, negative side
  Coil_3_SECOND = Region[{Coil_3_SECOND_P, Coil_3_SECOND_M}];
  Coils_3 = Region[{Coil_3_PRIM, Coil_3_SECOND}];

  // Abstract regions that will be used in the "Lib_Magnetodynamics2D_av_Cir.pro"
  // template file included below;
  Vol_Mag = Region[{Air, Core, Coils_1, Coils_2, Coils_3}]; // full magnetic domain
  If (ConductorType == 1)
    Vol_C_Mag = Region[{Coils_1, Coils_2, Coils_3}]; // massive conductors
  ElseIf (ConductorType == 2)
    Vol_S_Mag = Region[{Coils_1, Coils_2, Coils_3}]; // stranded conductors (coils)
  EndIf
}

Function {
  mu0 = 4e-7*Pi;
  mu[Air] = 1 * mu0;
  mu[Core] = mur_Core * mu0;
  mu[Coils_1] = 1 * mu0;
  mu[Coils_2] = 1 * mu0;
  mu[Coils_3] = 1 * mu0;
  nu[] = 1 / mu[];

  sigma[Coils_1] = 1e7;
  sigma[Coils_2] = 1e7;
  sigma[Coils_3] = 1e7;

  // To be defined separately for each coil portion, to fix the convention of
  // positive current (1: along Oz, -1: along -Oz)
  SignBranch[Coil_1_PRIM_P] = 1;
  SignBranch[Coil_1_PRIM_M] = -1;
  SignBranch[Coil_1_SECOND_P] = 1;
  SignBranch[Coil_1_SECOND_M] = -1;
  SignBranch[Coil_2_PRIM_P] = 1;
  SignBranch[Coil_2_PRIM_M] = -1;
  SignBranch[Coil_2_SECOND_P] = 1;
  SignBranch[Coil_2_SECOND_M] = -1;
  SignBranch[Coil_3_PRIM_P] = 1;
  SignBranch[Coil_3_PRIM_M] = -1;
  SignBranch[Coil_3_SECOND_P] = 1;
  SignBranch[Coil_3_SECOND_M] = -1;

  If(ConductorType == 2)
    // Number of turns in the coils (same for PLUS and MINUS portions) - half
    // values because half coils are defined geometrically due to symmetry!
	n_SECOND = n_PRIM/V_ratio;
    Ns[Coil_1_PRIM] = n_PRIM;
    Ns[Coil_1_SECOND] = n_SECOND;
    Ns[Coil_2_PRIM] = n_PRIM;
	Ns[Coil_2_SECOND] = n_SECOND;
    Ns[Coil_3_PRIM] = n_PRIM;
	Ns[Coil_3_SECOND] = n_SECOND;
    
    // To be defined separately for each coil portion:
    Sc[Coil_1_PRIM_P] = SurfaceArea[];
    Sc[Coil_1_PRIM_M] = SurfaceArea[];
    Sc[Coil_1_SECOND_P] = SurfaceArea[];
    Sc[Coil_1_SECOND_M] = SurfaceArea[];
    Sc[Coil_2_PRIM_P] = SurfaceArea[];
    Sc[Coil_2_PRIM_M] = SurfaceArea[];
    Sc[Coil_2_SECOND_P] = SurfaceArea[];
    Sc[Coil_2_SECOND_M] = SurfaceArea[];
    Sc[Coil_3_PRIM_P] = SurfaceArea[];
    Sc[Coil_3_PRIM_M] = SurfaceArea[];
    Sc[Coil_3_SECOND_P] = SurfaceArea[];
    Sc[Coil_3_SECOND_M] = SurfaceArea[];


    // Current density in each coil portion for a unit current (will be
    // multiplied by the actual total current in the coil), in the case of
    // stranded conductors
    js0[Coils_1] = Ns[] / Sc[] * Vector[0, 0, SignBranch[]];
    js0[Coils_2] = Ns[] / Sc[] * Vector[0, 0, SignBranch[]];
    js0[Coils_3] = Ns[] / Sc[] * Vector[0, 0, SignBranch[]];
  EndIf

  // For a correct definition of the voltage
  CoefGeos[Coils_1] = SignBranch[] * thickness_Core;
  CoefGeos[Coils_2] = SignBranch[] * thickness_Core;
  CoefGeos[Coils_3] = SignBranch[] * thickness_Core;
}

Flag_CircuitCoupling = 1;

Group {
  Resistance_Cir  = Region[{}]; // all resistances
  Inductance_Cir  = Region[{}] ; // all inductances
  Capacitance_Cir = Region[{}] ; // all capacitances
  SourceV_Cir = Region[{}]; // all voltage sources
  SourceI_Cir = Region[{}]; // all current sources

  // Primary side
  E_in_1 = Region[10011]; // arbitrary region number (not linked to the mesh)
  E_in_2 = Region[10021]; // arbitrary region number (not linked to the mesh)
  E_in_3 = Region[10031]; // arbitrary region number (not linked to the mesh)
  SourceV_Cir += Region[{E_in_1, E_in_2, E_in_3}];
  R_in_1 = Region[10012]; // arbitrary region number (not linked to the mesh)
  R_in_2 = Region[10022]; // arbitrary region number (not linked to the mesh)
  R_in_3 = Region[10032]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_in_1, R_in_2, R_in_3}];

  // Secondary side
  R_out_1 = Region[10111]; // arbitrary region number (not linked to the mesh)
  R_out_2 = Region[10121]; // arbitrary region number (not linked to the mesh)
  R_out_3 = Region[10131]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_out_1, R_out_2, R_out_3}];
}

Function {
  deg = Pi/180;
  phase_E_in_1 = 0 *deg; // Phase in radian (from phase in degree)
  phase_E_in_2 = 120 *deg;
  phase_E_in_3 = 240 *deg;
  
  r_out = 10;
  Resistance[R_out_1] = r_out;
  Resistance[R_out_2] = r_out;
  Resistance[R_out_3] = r_out;
  
  r_in = 1e-3;
  Resistance[R_in_1] = r_in;
  Resistance[R_in_2] = r_in;
  Resistance[R_in_3] = r_in;
}

Constraint {
  { Name MagneticVectorPotential_2D;
    Case {
      { Region Sur_Air_Ext; Value 0; }
    }
  }
  { Name Current_2D;
    Case {
    }
  }
  { Name Voltage_2D;
    Case {
    }
  }
  { Name Current_Cir ;
    Case {
    }
  }
  { Name Voltage_Cir ;
    Case {
      { Region E_in_1; Value val_E_in;
        TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_1}; }
    }
	Case {
      { Region E_in_2; Value val_E_in;
        TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_2}; }
    }
	Case {
      { Region E_in_3; Value val_E_in;
        TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_3}; }
    }
  }
  { Name ElectricalCircuit ; Type Network ;
    Case Circuit_1_PRIM {
      { Region E_in_1; Branch {1,4}; }
      { Region R_in_1; Branch {4,2}; }

      { Region Coil_1_PRIM_P; Branch {2,3} ; }
      { Region Coil_1_PRIM_M; Branch {3,1} ; }
    }
    Case Circuit_1_SECOND {
      { Region R_out_1; Branch {1,2}; }

      { Region Coil_1_SECOND_P; Branch {2,3} ; }
      { Region Coil_1_SECOND_M; Branch {3,1} ; }
    }
	Case Circuit_2_PRIM {
      { Region E_in_2; Branch {1,4}; }
      { Region R_in_2; Branch {4,2}; }

      { Region Coil_2_PRIM_P; Branch {2,3} ; }
      { Region Coil_2_PRIM_M; Branch {3,1} ; }
    }
    Case Circuit_2_SECOND {
      { Region R_out_2; Branch {1,2}; }

      { Region Coil_2_SECOND_P; Branch {2,3} ; }
      { Region Coil_2_SECOND_M; Branch {3,1} ; }
    }
	Case Circuit_3_PRIM {
      { Region E_in_3; Branch {1,4}; }
      { Region R_in_3; Branch {4,2}; }

      { Region Coil_3_PRIM_P; Branch {2,3} ; }
      { Region Coil_3_PRIM_M; Branch {3,1} ; }
    }
    Case Circuit_3_SECOND {
      { Region R_out_3; Branch {1,2}; }

      { Region Coil_3_SECOND_P; Branch {2,3} ; }
      { Region Coil_3_SECOND_M; Branch {3,1} ; }
    }
  }
}

Include "Lib_Magnetodynamics2D_av_Cir.pro";

PostOperation {
  { Name Map_a; NameOfPostProcessing Magnetodynamics2D_av;
    Operation {
      Print[ j, OnElementsOf Region[{Vol_C_Mag, Vol_S_Mag}], Format Gmsh, File "j.pos" ];
      //Print[ b, OnElementsOf Vol_Mag, Format Gmsh, File "b.pos" ];
	  Print[ norm_of_b, OnElementsOf Vol_Mag, Format Gmsh, File "norm_b.pos" ];
      //Print[ az, OnElementsOf Vol_Mag, Format Gmsh, File "az.pos" ];
      If (Flag_FrequencyDomain)
        // In text file UI.txt: voltage and current of the primary coil (from
        // E_in) (real and imaginary parts!)
        Echo[ "E_in_1", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion E_in_1, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion E_in_1, Format FrequencyTable, File > "UI3_shell.txt"];

		Echo[ "E_in_2", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion E_in_2, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion E_in_2, Format FrequencyTable, File > "UI3_shell.txt"];
        
		Echo[ "E_in_3", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion E_in_3, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion E_in_3, Format FrequencyTable, File > "UI3_shell.txt"];
        
		// In text file UI.txt: voltage and current of the secondary coil (from
        // R_out)
        Echo[ "R_out_1", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion R_out_1, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion R_out_1, Format FrequencyTable, File > "UI3_shell.txt"];
		
		Echo[ "R_out_2", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion R_out_2, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion R_out_2, Format FrequencyTable, File > "UI3_shell.txt"];
		
		Echo[ "R_out_3", Format Table, File > "UI3_shell.txt" ];
        Print[ U, OnRegion R_out_3, Format FrequencyTable, File > "UI3_shell.txt" ];
        Print[ I, OnRegion R_out_3, Format FrequencyTable, File > "UI3_shell.txt"];
      EndIf
    }
  }
}
