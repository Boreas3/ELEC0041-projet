DefineConstant[
    gap_Core = {0.0, Min 0, Max 1e-3, Step 1e-3,
      Name "Air gap"}
    width_Core_Leg = {1,
      Name "Core Geometry/width leg"}
    width_internal_Core_Leg = {1.5,
      Name "Core Geometry/width intermediary leg"}
    width_external_Core_Leg = {1,
        Name "Core Geometry/width external leg"}
    width_Window = {1.5,
      Name "Core Geometry/width Window"} 
    height_Window = {3.5,
      Name "Core Geometry/height Window"}  
    thickness_Core = {2.2,
      Name "Core Geometry/thickness of the core"}
    r = {0.01,
      Name "Core Geometry/Round window"}
    V_ratio = {10, Name "Transformer ratio - phase to phase"}
    n_PRIM = {400, Min 100, Max 1000, Step 100, Name "Number of turn - primary side"}
    Config_prim = {1, Choices{1="Star", 2 = "Delta"}, Highlight "Red", 
    Name "Connection type - primary side"}
    Config_second = {2, Choices{1="Star", 2 = "Delta"}, Highlight "Green", 
    Name "Connection type - secondary side"}
    s       = DefineNumber[1, Name "Model parameters/Global mesh size",
		       Help "Reduce for finer mesh"]
  ];
// Dimensions
mm = 1e-3;
  // Dimensions
If (Config_prim == 1)
  If (Config_second == 1)
    n_SECOND = Ceil[n_PRIM/V_ratio*1];
  ElseIf (Config_second == 2)
    n_SECOND = Ceil[Sqrt[3] * n_PRIM/V_ratio*1];
  EndIf
ElseIf (Config_prim == 2)
  If (Config_second == 1)
    n_SECOND = Ceil[n_PRIM/(V_ratio*Sqrt[3])];
  ElseIf (Config_second == 2)
    n_SECOND = Ceil[n_PRIM/V_ratio];
  EndIf
EndIf
width_Coil_PRIM = 2*2.77*mm;
width_Coil_SECOND = 2*6.64*mm;
height_Coil_PRIM = n_PRIM*width_Coil_PRIM;
height_Coil_SECOND = n_SECOND*width_Coil_SECOND;
width_Core = 2*width_Window+width_Core_Leg+2*width_internal_Core_Leg+2*width_external_Core_Leg;


// Thickness along Oz (to be considered for a correct definition of voltage)


height_Core = height_Window+2*width_internal_Core_Leg;

gap_Core_Coil = 0.2;
gap_Core_Coil_A = gap_Core_Coil;

gap_Core_Coil_B = gap_Core_Coil;

gap_Core_Coil_C = gap_Core_Coil;

gap_Core_Box = 1.;
gap_Transfo = height_Core+width_Core/2;
coef = gap_Transfo;
r_int =gap_Core_Box+coef;
r_ext = r_int+1;
// Characteristic lenghts (for mesh sizes)

c_Core = width_Core_Leg/10. *s;
c_Base = width_Core_Leg/60. *s;

c_Coil_A = height_Coil_PRIM/2/5 *s;
c_Coil_B = height_Coil_PRIM/2/5 *s;
c_Coil_C = height_Coil_PRIM/2/5 *s;

c_Box = gap_Core_Box *s;

// Physical regions

AIR_EXT = 1000;
AIR_INF = 1001;
SUR_AIR_EXT = 1002;

CORE = 1050;
CORE_BASE = 1051;

COIL_A_PRIM_PLUS = 1111;
COIL_A_PRIM_MINUS = 1112;

COIL_A_SECOND_PLUS = 1121;
COIL_A_SECOND_MINUS = 1122;

COIL_B_PRIM_PLUS = 1211;
COIL_B_PRIM_MINUS = 1212;

COIL_B_SECOND_PLUS = 1221;
COIL_B_SECOND_MINUS = 1222;

COIL_C_PRIM_PLUS = 1311;
COIL_C_PRIM_MINUS = 1312;

COIL_C_SECOND_PLUS = 1321;
COIL_C_SECOND_MINUS = 1322;
