Include "transfo_3p_core_common.pro";

DefineConstant[
  ConductorType = {2, Choices{1 = "Massive", 2 = "Coil"}, Highlight "Blue",
    Name "Parameters/01Conductor type"}
  Config_prim = {1, Choices{1="Star", 2 = "Delta"}, Highlight "Red", 
  Name "Connection type - primary side"}
  Config_second = {1, Choices{1="Star", 2 = "Delta"}, Highlight "Green", 
  Name "Connection type - secondary side"}
  Freq = {50, Name "Frequency"}
  val_U_in = {60e3, Name "Voltage at the primary side (phase to phase)"}
  mur_Core = {1000, Min 1, Max 10000, Step 1,
    Name "Parameters/Core relative permeability"}
  n_PRIM = {500, Min 100, Max 1000, Step 100, Name "Number of turn - primary side"}
  V_ratio = {25, Name "Transformer ratio - phase to phase"}
];

Group {
  // Physical regions:
  Air = Region[AIR_EXT];
  Sur_Air_Ext = Region[SUR_AIR_EXT]; // exterior boundary
  Core = Region[{CORE, CORE_BASE}]; // magnetic core of the transformer, assumed non-conducting
  
  // First phase
  Coil_A_PRIM_P = Region[COIL_1_PRIM_PLUS]; // 1st phase, 1st coil, positive side
  Coil_A_PRIM_M = Region[COIL_1_PRIM_MINUS]; // 1st phase, 1st coil, negative side
  Coil_A_PRIM = Region[{Coil_A_PRIM_P, Coil_A_PRIM_M}];
  Coil_A_SECOND_P = Region[COIL_1_SECOND_PLUS]; // 1st phase, 2nd coil, positive side
  Coil_A_SECOND_M = Region[COIL_1_SECOND_MINUS]; // 1st phase, 2nd coil, negative side
  Coil_A_SECOND = Region[{Coil_A_SECOND_P, Coil_A_SECOND_M}];
  

  // Second phase
  Coil_B_PRIM_P = Region[COIL_2_PRIM_PLUS]; // 2nd phase, 1st coil, positive side
  Coil_B_PRIM_M = Region[COIL_2_PRIM_MINUS]; // 2nd phase, 1st coil, negative side
  Coil_B_PRIM = Region[{Coil_B_PRIM_P, Coil_B_PRIM_M}];
  Coil_B_SECOND_P = Region[COIL_2_SECOND_PLUS]; // 2nd phase, 2nd coil, positive side
  Coil_B_SECOND_M = Region[COIL_2_SECOND_MINUS]; // 2nd phase, 2nd coil, negative side
  Coil_B_SECOND = Region[{Coil_B_SECOND_P, Coil_B_SECOND_M}];
  

  // Third phase
  Coil_C_PRIM_P = Region[COIL_3_PRIM_PLUS]; // 3rd phase, 1st coil, positive side
  Coil_C_PRIM_M = Region[COIL_3_PRIM_MINUS]; // 3rd phase, 1st coil, negative side
  Coil_C_PRIM = Region[{Coil_C_PRIM_P, Coil_C_PRIM_M}];
  Coil_C_SECOND_P = Region[COIL_3_SECOND_PLUS]; // 3rd phase, 2nd coil, positive side
  Coil_C_SECOND_M = Region[COIL_3_SECOND_MINUS]; // 3rd phase, 2nd coil, negative side
  Coil_C_SECOND = Region[{Coil_C_SECOND_P, Coil_C_SECOND_M}];
  Coil_PRIM = Region[{Coil_A_PRIM, Coil_B_PRIM, Coil_C_PRIM}];
  Coil_SECOND = Region[{Coil_A_SECOND, Coil_B_SECOND, Coil_C_SECOND}];

  Coils = Region[{Coil_PRIM, Coil_SECOND}];
  // Abstract regions that will be used in the "Lib_Magnetodynamics2D_av_Cir.pro"
  // template file included below;
  Vol_Mag = Region[{Air, Core, Coils}]; // full magnetic domain
  If (ConductorType == 1)
    Vol_C_Mag = Region[{Coils}]; // massive conductors
  ElseIf (ConductorType == 2)
    Vol_S_Mag = Region[{Coils}]; // stranded conductors (coils)
  EndIf
}

Function {
  mu0 = 4e-7*Pi;
  mu[Air] = 1 * mu0;
  mu[Core] = mur_Core * mu0;
  mu[Coils] = 1 * mu0;
  nu[] = 1 / mu[];

  sigma[Coils] = 1e7;

  // To be defined separately for each coil portion, to fix the convention of
  // positive current (1: along Oz, -1: along -Oz)
  SignBranch[Coil_A_PRIM_P] = 1;
  SignBranch[Coil_A_PRIM_M] = -1;
  SignBranch[Coil_A_SECOND_P] = 1;
  SignBranch[Coil_A_SECOND_M] = -1;
  SignBranch[Coil_B_PRIM_P] = 1;
  SignBranch[Coil_B_PRIM_M] = -1;
  SignBranch[Coil_B_SECOND_P] = 1;
  SignBranch[Coil_B_SECOND_M] = -1;
  SignBranch[Coil_C_PRIM_P] = 1;
  SignBranch[Coil_C_PRIM_M] = -1;
  SignBranch[Coil_C_SECOND_P] = 1;
  SignBranch[Coil_C_SECOND_M] = -1;

  If(ConductorType == 2)
    // Number of turns in the coils (same for PLUS and MINUS portions) 
    If (Config_prim == 1)
      If (Config_second == 1)
        n_SECOND = n_PRIM/V_ratio;
        Ns[Coil_PRIM] = n_PRIM;
        Ns[Coil_SECOND] = n_SECOND;
      ElseIf (Config_second == 2)
        n_SECOND = Sqrt[3] * n_PRIM/V_ratio;
        Ns[Coil_PRIM] = n_PRIM;
        Ns[Coil_SECOND] = n_SECOND;
      EndIf
    ElseIf (Config_prim == 2)
      If (Config_second == 1)
        n_SECOND = n_PRIM/(V_ratio*Sqrt[3]);
        Ns[Coil_PRIM] = n_PRIM;
        Ns[Coil_SECOND] = n_SECOND;
      ElseIf (Config_second == 2)
        n_SECOND = n_PRIM/V_ratio;
        Ns[Coil_PRIM] = n_PRIM;
        Ns[Coil_SECOND] = n_SECOND;
      EndIf
    EndIf
    
    // To be defined separately for each coil portion:
    Sc[Coil_A_PRIM_P] = SurfaceArea[];
    Sc[Coil_A_PRIM_M] = SurfaceArea[];
    Sc[Coil_A_SECOND_P] = SurfaceArea[];
    Sc[Coil_A_SECOND_M] = SurfaceArea[];
    Sc[Coil_B_PRIM_P] = SurfaceArea[];
    Sc[Coil_B_PRIM_M] = SurfaceArea[];
    Sc[Coil_B_SECOND_P] = SurfaceArea[];
    Sc[Coil_B_SECOND_M] = SurfaceArea[];
    Sc[Coil_C_PRIM_P] = SurfaceArea[];
    Sc[Coil_C_PRIM_M] = SurfaceArea[];
    Sc[Coil_C_SECOND_P] = SurfaceArea[];
    Sc[Coil_C_SECOND_M] = SurfaceArea[];


    // Current density in each coil portion for a unit current (will be
    // multiplied by the actual total current in the coil), in the case of
    // stranded conductors
    js0[Coils] = Ns[] / Sc[] * Vector[0, 0, SignBranch[]];
  EndIf

  // For a correct definition of the voltage
  CoefGeos[Coils] = SignBranch[] * thickness_Core;
}

Flag_CircuitCoupling = 1;

Group {
  Resistance_Cir  = Region[{}]; // all resistances
  Inductance_Cir  = Region[{}] ; // all inductances
  Capacitance_Cir = Region[{}] ; // all capacitances
  SourceV_Cir = Region[{}]; // all voltage sources
  SourceI_Cir = Region[{}]; // all current sources

  // Primary side
  E_in_A = Region[10011]; // arbitrary region number (not linked to the mesh)
  E_in_B = Region[10021]; // arbitrary region number (not linked to the mesh)
  E_in_C = Region[10031]; // arbitrary region number (not linked to the mesh)
  SourceV_Cir += Region[{E_in_A, E_in_B, E_in_C}];
  R_in_A = Region[10012]; // arbitrary region number (not linked to the mesh)
  R_in_B = Region[10022]; // arbitrary region number (not linked to the mesh)
  R_in_C = Region[10032]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_in_A, R_in_B, R_in_C}];

  // Secondary side
  R_out_A = Region[10111]; // arbitrary region number (not linked to the mesh)
  R_out_B = Region[10121]; // arbitrary region number (not linked to the mesh)
  R_out_C = Region[10131]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_out_A, R_out_B, R_out_C}];
}

Function {
  deg = Pi/180;
  phase_E_in_A = 0 *deg; // Phase in radian (from phase in degree)
  phase_E_in_B = 120 *deg;
  phase_E_in_C = 240 *deg;
  
  r_out = 1000;
  Resistance[R_out_A] = r_out;
  Resistance[R_out_B] = r_out;
  Resistance[R_out_C] = r_out;
  
  r_in = 1e-3;
  Resistance[R_in_A] = r_in;
  Resistance[R_in_B] = r_in;
  Resistance[R_in_C] = r_in;
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
  If (Config_prim == 1)
    { Name Voltage_Cir ;
      Case {
        { Region E_in_A; Value val_U_in/Sqrt[3];
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_A-Pi/6}; }
      }
    Case {
        { Region E_in_B; Value val_U_in/Sqrt[3];
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_B-Pi/6}; }
      }
    Case {
        { Region E_in_C; Value val_U_in/Sqrt[3];
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_C-Pi/6}; }
      }
    }
  ElseIf (Config_prim == 2)
    { Name Voltage_Cir ;
      Case {
        { Region E_in_A; Value val_U_in;
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_A}; }
      }
    Case {
        { Region E_in_B; Value val_U_in;
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_B}; }
      }
    Case {
        { Region E_in_C; Value val_U_in;
          TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in_C}; }
      }
    }
  EndIf
  { Name ElectricalCircuit ; Type Network ;
  If (Config_prim == 1)
    Case Circuit_1 {
      { Region E_in_A; Branch {3,4}; }
      { Region R_in_A; Branch {4,1}; }
      { Region Coil_A_PRIM_P; Branch {1,2} ; }
      { Region Coil_A_PRIM_M; Branch {2,3} ; }
      
      { Region E_in_B; Branch {3,7}; }
      { Region R_in_B; Branch {7,5}; }
      { Region Coil_B_PRIM_P; Branch {5,6} ; }
      { Region Coil_B_PRIM_M; Branch {6,3} ; }
      
      { Region E_in_C; Branch {3,10}; }
      { Region R_in_C; Branch {10,8}; }
      { Region Coil_C_PRIM_P; Branch {8,9} ; }
      { Region Coil_C_PRIM_M; Branch {9,3} ; }
    }
  ElseIf (Config_prim == 2)
    Case Circuit_1 {
      { Region Coil_A_PRIM_P; Branch {1,2} ; }
      { Region Coil_A_PRIM_M; Branch {2,3} ; }
      { Region Coil_B_PRIM_P; Branch {3,4} ; }
      { Region Coil_B_PRIM_M; Branch {4,5} ; }
      { Region Coil_C_PRIM_P; Branch {5,6} ; }
      { Region Coil_C_PRIM_M; Branch {6,1} ; }

      { Region E_in_A; Branch {3,7}; }
      { Region R_in_A; Branch {7,1}; }
      
      { Region E_in_B; Branch {5,8}; }
      { Region R_in_B; Branch {8,3}; }
      
      { Region E_in_C; Branch {1,9}; }
      { Region R_in_C; Branch {9,5}; }
    }
  EndIf
  If (Config_second == 1)
    Case Circuit_2 {
      { Region R_out_A; Branch {1,2}; }
      { Region Coil_A_SECOND_P; Branch {2,3} ; }
      { Region Coil_A_SECOND_M; Branch {3,1} ; }		

      { Region R_out_B; Branch {1,4}; }
      { Region Coil_B_SECOND_P; Branch {4,5} ; }
      { Region Coil_B_SECOND_M; Branch {5,1} ; }
        
      { Region R_out_C; Branch {1,6}; }
      { Region Coil_C_SECOND_P; Branch {6,7} ; }
      { Region Coil_C_SECOND_M; Branch {7,1} ; }
    }
    ElseIf (Config_second == 2)
      Case Circuit_2 {
        { Region Coil_A_SECOND_P; Branch {1,2} ; }
        { Region Coil_A_SECOND_M; Branch {2,3} ; }	
        { Region Coil_B_SECOND_P; Branch {3,4} ; }
        { Region Coil_B_SECOND_M; Branch {4,5} ; }	
        { Region Coil_C_SECOND_P; Branch {5,6} ; }
        { Region Coil_C_SECOND_M; Branch {6,1} ; }

        { Region R_out_A; Branch {3,1}; }
        { Region R_out_B; Branch {5,3}; }
        { Region R_out_C; Branch {1,5}; }
      }
  EndIf
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
        Echo[ "E_in_A", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion E_in_A, Format FrequencyTable, File > "UI3_core.txt"];
        Print[ I, OnRegion E_in_A, Format FrequencyTable, File > "UI3_core.txt"];

		    Echo[ "E_in_B", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion E_in_B, Format FrequencyTable, File > "UI3_core.txt"];
        Print[ I, OnRegion E_in_B, Format FrequencyTable, File > "UI3_core.txt"];
        
		    Echo[ "E_in_C", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion E_in_C, Format FrequencyTable, File > "UI3_core.txt" ];
        Print[ I, OnRegion E_in_C, Format FrequencyTable, File > "UI3_core.txt"];
        
		    // In text file UI.txt: voltage and current of the secondary coil (from
        // R_out)
        Echo[ "R_out_A", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion R_out_A, Format FrequencyTable, File > "UI3_core.txt" ];
        Print[ I, OnRegion R_out_A, Format FrequencyTable, File > "UI3_core.txt"];
		
		    Echo[ "R_out_B", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion R_out_B, Format FrequencyTable, File > "UI3_core.txt" ];
        Print[ I, OnRegion R_out_B, Format FrequencyTable, File > "UI3_core.txt"];
		
		    Echo[ "R_out_C", Format Table, File > "UI3_core.txt" ];
        Print[ U, OnRegion R_out_C, Format FrequencyTable, File > "UI3_core.txt" ];
        Print[ I, OnRegion R_out_C, Format FrequencyTable, File > "UI3_core.txt"];
      EndIf
    }
  }
}
