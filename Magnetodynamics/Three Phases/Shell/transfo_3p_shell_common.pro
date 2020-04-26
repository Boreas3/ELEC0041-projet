
// Dimensions

width_Core = 1.5;
height_Core = 1.;

// Thickness along Oz (to be considered for a correct definition of voltage)
thickness_Core = 1.;

width_Window = 0.6;
height_Window = 0.6;

width_Core_Leg = (width_Core-width_Window)/3.;

width_Coil_1 = 0.05;
height_Coil_1 = 0.25;
gap_Core_Coil_1 = 0.025;

width_Coil_2 = 0.05;
height_Coil_2 = 0.25;
gap_Core_Coil_2 = 0.025;

width_Coil_3 = 0.05;
height_Coil_3 = 0.25;
gap_Core_Coil_3 = 0.025;

gap_Core = 0.00; 
gap_Core_Box_X = 1.;
gap_Core_Box_Y = 1.;

// Characteristic lenghts (for mesh sizes)

s = 0.2;

c_Core = width_Core_Leg/10. *s;
c_Base = width_Core_Leg/50. *s;

c_Coil_1 = height_Coil_1/2/5 *s;
c_Coil_2 = height_Coil_2/2/5 *s;
c_Coil_3 = height_Coil_3/2/5 *s;

c_Box = gap_Core_Box_X/6. *s;

// Physical regions

AIR_EXT = 1000;
SUR_AIR_EXT = 1002;
AIR_01_WINDOW = 1001;
AIR_12_WINDOW = 1012;
AIR_23_WINDOW = 1023;
AIR_34_WINDOW = 1034;

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