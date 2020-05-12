DefineConstant[
  gap_Core = {0.0, Min 0, Max 1e-3, Step 1e-3,
    Name "Air gap"}
  central_width_Core_Leg = {0.1,
    Name "Core Geometry/width central leg"}
  width_Core_Leg = {0.18,
    Name "Core Geometry/width external leg"}
  width_Window = {0.35,
    Name "Core Geometry/width Window"} 
  thickness_Core = {0.435,
    Name "Core Geometry/thickness of the core"}
  r = {0.01,
    Name "Core Geometry/Round window"}
  V_ratio = {25, Name "Transformer ratio - phase to phase"}
  n_PRIM = {62.5, Min 100, Max 1000, Step 100, Name "Number of turn - primary side"}
  Config_prim = {1, Choices{1="Star", 2 = "Delta"}, Highlight "Red", 
  Name "Connection type - primary side"}
  Config_second = {2, Choices{1="Star", 2 = "Delta"}, Highlight "Green", 
  Name "Connection type - secondary side"}
];
mm = 1e-3;
// Dimensions
If (Config_prim == 1)
If (Config_second == 1)
  n_SECOND = n_PRIM/V_ratio;
ElseIf (Config_second == 2)
  n_SECOND = Sqrt[3] * n_PRIM/V_ratio;
EndIf
ElseIf (Config_prim == 2)
If (Config_second == 1)
  n_SECOND = n_PRIM/(V_ratio*Sqrt[3]);
ElseIf (Config_second == 2)
  n_SECOND = n_PRIM/V_ratio;
EndIf
EndIf
width_Coil_PRIM = 8.4*mm;
width_Coil_SECOND = 32*mm;
height_Coil_PRIM = n_PRIM*width_Coil_PRIM;
height_Coil_SECOND = n_SECOND*width_Coil_SECOND;

width_Core = 2*width_Window+central_width_Core_Leg+2*width_Core_Leg;
height_Core = 1.3;

// Thickness along Oz (to be considered for a correct definition of voltage)

height_Window = 0.9;


gap_Core_Coil_1 = 0.01;
gap_Core_Coil_2 = 0.01;
gap_Core_Coil_3 = 0.01;

gap_Core_Box_X = 1.;
gap_Core_Box_Y = 1.;

// Characteristic lenghts (for mesh sizes)

s = 0.2;

c_Core = width_Core_Leg/10. *s;
c_Base = width_Core_Leg/60. *s;

c_Coil_1 = height_Coil_PRIM/2/5 *s;
c_Coil_2 = height_Coil_PRIM/2/5 *s;
c_Coil_3 = height_Coil_PRIM/2/5 *s;

c_Box = gap_Core_Box_X/2. *s;

// Physical regions

AIR_EXT = 1000;
SUR_AIR_EXT = 1002;
AIR_12_WINDOW = 1012;
AIR_23_WINDOW = 1023;

CORE = 1050;
CORE_BASE = 1051;

COIL_1_PRIM_PLUS = 1111;
COIL_1_PRIM_MINUS = 1112;

COIL_1_SECOND_PLUS = 1121;
COIL_1_SECOND_MINUS = 1122;

COIL_2_PRIM_PLUS = 1211;
COIL_2_PRIM_MINUS = 1212;

COIL_2_SECOND_PLUS = 1221;
COIL_2_SECOND_MINUS = 1222;

COIL_3_PRIM_PLUS = 1311;
COIL_3_PRIM_MINUS = 1312;

COIL_3_SECOND_PLUS = 1321;
COIL_3_SECOND_MINUS = 1322;