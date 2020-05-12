///////////
// CORE A//
///////////
// Envelop
cy = 0;
cx = 0;
pos_LEFT = width_Core_Leg/2+width_Window+width_external_Core_Leg;
pos_RIGHT = width_Core_Leg/2+width_Window+width_external_Core_Leg;

P_CoreR_0s=newp; Point(newp) = {cx+pos_RIGHT-2*r, -height_Core/2+cy, 0, c_Core};
P_CoreR_0c=newp; Point(newp) = {cx+pos_RIGHT-2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreR_0e=newp; Point(newp) = {cx+pos_RIGHT, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreR_1s=newp; Point(newp) = {cx+pos_RIGHT, height_Core/2-2*r+cy, 0, c_Core};
P_CoreR_1c=newp; Point(newp) = {cx+pos_RIGHT-2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreR_1e=newp; Point(newp) = {cx+pos_RIGHT-2*r, height_Core/2+cy, 0, c_Core};
P_CoreL_1s=newp; Point(newp) = {cx-pos_LEFT+2*r, height_Core/2+cy, 0, c_Core};
P_CoreL_1c=newp; Point(newp) = {cx-pos_LEFT+2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreL_1e=newp; Point(newp) = {cx-pos_LEFT, height_Core/2-2*r+cy, 0, c_Core};
P_CoreL_0s=newp; Point(newp) = {cx-pos_LEFT, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreL_0c=newp; Point(newp) = {cx-pos_LEFT+2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreL_0e=newp; Point(newp) = {cx-pos_LEFT+2*r, -height_Core/2+cy, 0, c_Core};
l_Core_Env[]={};
l_Core_Env[]+=newl; Circle(newl) = {P_CoreR_0s, P_CoreR_0c, P_CoreR_0e};
l_Core_Env[]+=newl; Line(newl) = {P_CoreR_0e, P_CoreR_1s};
l_Core_Env[]+=newl; Circle(newl) = {P_CoreR_1s, P_CoreR_1c, P_CoreR_1e};
l_Core_Env[]+=newl; Line(newl) = {P_CoreR_1e, P_CoreL_1s};
l_Core_Env[]+=newl; Circle(newl) = {P_CoreL_1s, P_CoreL_1c, P_CoreL_1e};
l_Core_Env[]+=newl; Line(newl) = {P_CoreL_1e, P_CoreL_0s};
l_Core_Env[]+=newl; Circle(newl) = {P_CoreL_0s, P_CoreL_0c, P_CoreL_0e};
l_Core_Env[]+=newl; Line(newl) = {P_CoreL_0e, P_CoreR_0s};
ll_Core_Env=newll; Curve Loop(newll) = {l_Core_Env[]};

base = height_Core/2 - height_Window/2 - gap_Core;
P_Leg_1_L_0=newp; Point(newp) = {cx+-pos_LEFT, -height_Window/2.+cy, 0, c_Core};
P_Leg_1_R_0=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg,  -height_Window/2+cy, 0, c_Core};
P_Leg_2_L_0=newp; Point(newp) = {cx+(-width_Core_Leg)/2.,cy+ -height_Window/2., 0, c_Core};
P_Leg_2_R_0=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+-height_Window/2., 0, c_Core};
P_Leg_3_L_0=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, -height_Window/2.+cy, 0, c_Core};
P_Leg_3_R_0=newp; Point(newp) = {cx+pos_RIGHT, -height_Window/2.+cy, 0, c_Core};
If (gap_Core==0)
    P_12_Window_L_1s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_12_Window_L_1c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_12_Window_L_1e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2+cy, 0, c_Core};
    P_12_Window_R_1s=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, height_Window/2+cy, 0, c_Core};
    P_12_Window_R_1c=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, height_Window/2 - r+cy, 0, c_Core};
    P_12_Window_R_1e=newp; Point(newp) = {cx+(-width_Core_Leg)/2., height_Window/2 - r+cy, 0, c_Core};
    P_12_Window_R_0s=newp; Point(newp) = {cx+(-width_Core_Leg)/2., -height_Window/2 + r+cy, 0, c_Core};
    P_12_Window_R_0c=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_Window_R_0e=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, -height_Window/2+cy, 0, c_Core};
    P_12_Window_L_0s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, -height_Window/2+cy, 0, c_Core};
    P_12_Window_L_0c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_Window_L_0e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, -height_Window/2 + r+cy, 0, c_Core};
    
    l_12_Window[]={};
    l_12_Window[]+=newl; Circle(newl) = {P_12_Window_L_1s, P_12_Window_L_1c, P_12_Window_L_1e};
    l_12_Window[]+=newl; Line(newl) = {P_12_Window_L_1e, P_12_Window_R_1s};
    l_12_Window[]+=newl; Circle(newl) = {P_12_Window_R_1s, P_12_Window_R_1c, P_12_Window_R_1e};
    l_12_Window[]+=newl; Line(newl) = {P_12_Window_R_1e, P_12_Window_R_0s};
    l_12_Window[]+=newl; Circle(newl) = {P_12_Window_R_0s, P_12_Window_R_0c, P_12_Window_R_0e};
    l_12_Window[]+=newl; Line(newl) = {P_12_Window_R_0e, P_12_Window_L_0s};
    l_12_Window[]+=newl; Circle(newl) = {P_12_Window_L_0s, P_12_Window_L_0c, P_12_Window_L_0e};
    l_12_Window[]+=newl; Line(newl) = {P_12_Window_L_0e, P_12_Window_L_1s};
    
    // AIR_23_WINDOW
    P_23_Window_L_1s=newp; Point(newp) = {cx+(width_Core_Leg)/2., cy+height_Window/2 - r, 0, c_Core};
    P_23_Window_L_1c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+height_Window/2 - r, 0, c_Core};
    P_23_Window_L_1e=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+height_Window/2, 0, c_Core};
    P_23_Window_R_1s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+height_Window/2, 0, c_Core};
    P_23_Window_R_1c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+height_Window/2 - r, 0, c_Core};
    P_23_Window_R_1e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, cy+height_Window/2 - r, 0, c_Core};
    P_23_Window_R_0s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, cy+-height_Window/2 + r, 0, c_Core};
    P_23_Window_R_0c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+-height_Window/2 + r, 0, c_Core};
    P_23_Window_R_0e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+-height_Window/2, 0, c_Core};
    P_23_Window_L_0s=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+-height_Window/2, 0, c_Core};
    P_23_Window_L_0c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+-height_Window/2 + r, 0, c_Core};
    P_23_Window_L_0e=newp; Point(newp) = {cx+(width_Core_Leg)/2., cy+-height_Window/2 + r, 0, c_Core};
    
    l_23_Window[]={};
    l_23_Window[]+=newl; Circle(newl) = {P_23_Window_L_1s, P_23_Window_L_1c, P_23_Window_L_1e};
    l_23_Window[]+=newl; Line(newl) = {P_23_Window_L_1e, P_23_Window_R_1s};
    l_23_Window[]+=newl; Circle(newl) = {P_23_Window_R_1s, P_23_Window_R_1c, P_23_Window_R_1e};
    l_23_Window[]+=newl; Line(newl) = {P_23_Window_R_1e, P_23_Window_R_0s};
    l_23_Window[]+=newl; Circle(newl) = {P_23_Window_R_0s, P_23_Window_R_0c, P_23_Window_R_0e};
    l_23_Window[]+=newl; Line(newl) = {P_23_Window_R_0e, P_23_Window_L_0s};
    l_23_Window[]+=newl; Circle(newl) = {P_23_Window_L_0s, P_23_Window_L_0c, P_23_Window_L_0e};
    l_23_Window[]+=newl; Line(newl) = {P_23_Window_L_0e, P_23_Window_L_1s};

Else
    P_Leg_1_L_0=newp; Point(newp) = {cx+-pos_LEFT,cy+ -height_Window/2., 0, c_Base};
    P_Leg_1_R_0s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg-r, -height_Window/2.+cy, 0, c_Base};
    P_Leg_1_R_0c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg-r, -height_Window/2.+r+cy, 0, c_Base};
    P_Leg_1_R_0e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, -height_Window/2.+r+cy, 0, c_Base};
    P_Leg_1_L_1=newp; Point(newp) = {cx+-pos_LEFT ,cy+ height_Core/2, 0, c_Core};
    P_Leg_1_R_1s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_Leg_1_R_1c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_Leg_1_R_1e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2+cy, 0, c_Core};

    P_Leg_2_L_0s=newp; Point(newp) = {cx+(-width_Core_Leg)/2, -height_Window/2.+r+cy, 0, c_Base};
    P_Leg_2_L_0c=newp; Point(newp) = {cx+(-width_Core_Leg)/2+r, -height_Window/2.+r+cy, 0, c_Base};
    P_Leg_2_L_0e=newp; Point(newp) = {cx+(-width_Core_Leg)/2+r, -height_Window/2.+cy, 0, c_Base};
    P_Leg_2_R_0s=newp; Point(newp) = {cx+(width_Core_Leg)/2.-r,cy+ -height_Window/2., 0, c_Base};
    P_Leg_2_R_0c=newp; Point(newp) = {cx+(width_Core_Leg)/2.-r,cy+ -height_Window/2.+r, 0, c_Base};
    P_Leg_2_R_0e=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+ -height_Window/2.+r, 0, c_Base};

    P_Leg_2_L_1s=newp; Point(newp) = {cx+(-width_Core_Leg)/2 - r, height_Window/2+cy, 0, c_Core};
    P_Leg_2_L_1c=newp; Point(newp) = {cx+(-width_Core_Leg)/2 - r, height_Window/2 - r+cy, 0, c_Core};
    P_Leg_2_L_1e=newp; Point(newp) = {cx+(-width_Core_Leg)/2, height_Window/2 - r+cy, 0, c_Core};
    P_Leg_2_R_1s=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+ height_Window/2 - r, 0, c_Core};
    P_Leg_2_R_1c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r,cy+ height_Window/2 - r, 0, c_Core};
    P_Leg_2_R_1e=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r,cy+ height_Window/2, 0, c_Core};

    P_Leg_3_L_0s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg,cy+ -height_Window/2.+r, 0, c_Base};
    P_Leg_3_L_0c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg+r,cy+ -height_Window/2.+r, 0, c_Base};
    P_Leg_3_L_0e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg+r,cy+ -height_Window/2., 0, c_Base};
    P_Leg_3_R_0=newp; Point(newp) = {cx+pos_RIGHT,cy+ -height_Window/2., 0, c_Base};

    P_Leg_3_L_1s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r,cy+ height_Window/2, 0, c_Core};
    P_Leg_3_L_1c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r,cy+ height_Window/2 - r, 0, c_Core};
    P_Leg_3_L_1e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg,cy+ height_Window/2 - r, 0, c_Core};

    P_Leg_3_R_1=newp; Point(newp) = {cx+pos_RIGHT, cy+height_Core/2., 0, c_Core};

    l_Core_12_In[]={};
    l_Core_12_In[]+=newl; Circle(newl) = {P_Leg_1_R_0s, P_Leg_1_R_0c, P_Leg_1_R_0e};
    l_Core_12_In[]+=newl; Line(newl) = {P_Leg_1_R_0e, P_Leg_1_R_1s};
    l_Core_12_In[]+=newl; Circle(newl) = {P_Leg_1_R_1s, P_Leg_1_R_1c, P_Leg_1_R_1e};
    l_Core_12_In[]+=newl; Line(newl) = {P_Leg_1_R_1e, P_Leg_2_L_1s};
    l_Core_12_In[]+=newl; Circle(newl) = {P_Leg_2_L_1s, P_Leg_2_L_1c, P_Leg_2_L_1e};
    l_Core_12_In[]+=newl; Line(newl) = {P_Leg_2_L_1e, P_Leg_2_L_0s};
    l_Core_12_In[]+=newl; Circle(newl) = {P_Leg_2_L_0s, P_Leg_2_L_0c, P_Leg_2_L_0e};
    
    l_Core_23_In[]={};
    l_Core_23_In[]+=newl; Circle(newl) = {P_Leg_2_R_0s, P_Leg_2_R_0c, P_Leg_2_R_0e};
    l_Core_23_In[]+=newl; Line(newl) = {P_Leg_2_R_0e, P_Leg_2_R_1s};
    l_Core_23_In[]+=newl; Circle(newl) = {P_Leg_2_R_1s, P_Leg_2_R_1c, P_Leg_2_R_1e};
    l_Core_23_In[]+=newl; Line(newl) = {P_Leg_2_R_1e, P_Leg_3_L_1s};
    l_Core_23_In[]+=newl; Circle(newl) = {P_Leg_3_L_1s, P_Leg_3_L_1c, P_Leg_3_L_1e};
    l_Core_23_In[]+=newl; Line(newl) = {P_Leg_3_L_1e, P_Leg_3_L_0s};
    l_Core_23_In[]+=newl; Circle(newl) = {P_Leg_3_L_0s, P_Leg_3_L_0c, P_Leg_3_L_0e};
    
    l_Core_31_Out[]={};
    l_Core_31_Out[]+=newl; Line(newl) = {P_Leg_3_R_0, P_Leg_3_R_1};
    l_Core_31_Out[]+=newl; Line(newl) = {P_Leg_3_R_1, P_Leg_1_L_1};
    l_Core_31_Out[]+=newl; Line(newl) = {P_Leg_1_L_1, P_Leg_1_L_0};
    
    l_Core_Leg_1_Y0[]={};
    l_Core_Leg_1_Y0[]+=newl; Line(newl) = {P_Leg_1_L_0, P_Leg_1_R_0s};

    l_Core_Leg_2_Y0[]={};
    l_Core_Leg_2_Y0[]+=newl; Line(newl) = {P_Leg_2_L_0e, P_Leg_2_R_0s};

    l_Core_Leg_3_Y0[]={};
    l_Core_Leg_3_Y0[]+=newl; Line(newl) = {P_Leg_3_L_0e, P_Leg_3_R_0};

    ll_Core=newll; Curve Loop(newll) = {l_Core_12_In[], l_Core_Leg_2_Y0[],
                                         l_Core_23_In[], l_Core_Leg_3_Y0[], 
                                         l_Core_31_Out[], l_Core_Leg_1_Y0[]};

    //Base
    P_L_0=newp; Point(newp) = {cx+-pos_LEFT, -height_Core/2+cy, 0, c_Core};
    x_[] = Point{P_Leg_1_L_0};
    P_Leg_1_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_Leg_1_R_0s};
    P_Leg_1_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_Leg_2_L_0e};
    P_Leg_2_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_Leg_2_R_0s};
    P_Leg_2_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_Leg_3_L_0e};
    P_Leg_3_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_Leg_3_R_0};
    P_Leg_3_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    P_R_0=newp; Point(newp) = {cx+pos_RIGHT,cy+ -height_Core/2, 0, c_Core};
    l_Base[]={};
    l_Base[]+=newl; Line(newl) = {P_Leg_1_L_0_B, P_Leg_1_R_0_B};
    l_Base[]+=newl; Line(newl) = {P_Leg_1_R_0_B, P_Leg_2_L_0_B};
    l_Base[]+=newl; Line(newl) = {P_Leg_2_L_0_B, P_Leg_2_R_0_B};
    l_Base[]+=newl; Line(newl) = {P_Leg_2_R_0_B, P_Leg_3_L_0_B};
    l_Base[]+=newl; Line(newl) = {P_Leg_3_L_0_B, P_Leg_3_R_0_B};
    l_Base[]+=newl; Line(newl) = {P_Leg_3_R_0_B, P_R_0};
    l_Base[]+=newl; Line(newl) = {P_R_0, P_L_0};
    l_Base[]+=newl; Line(newl) = {P_L_0, P_Leg_1_L_0_B};

    ll_Base=newll; Curve Loop(newll) = {l_Base[]};
EndIf


// COIL_A_PRIM_PLUS

x_[]=Point{P_Leg_1_R_0};
P_Coil_A_prim_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, -height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_A};

l_Coil_A_prim_p[]={};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_P_ext_0, P_Coil_A_prim_P_ext_1};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_P_ext_1, P_Coil_A_prim_P_int_1};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_P_int_1, P_Coil_A_prim_P_int_0};

l_Coil_A_prim_P_Y0[]={};
l_Coil_A_prim_P_Y0[]+=newl; Line(newl) = {P_Coil_A_prim_P_int_0, P_Coil_A_prim_P_ext_0};

ll_Coil_A_prim_p=newll; Curve Loop(newll) = {l_Coil_A_prim_p[], l_Coil_A_prim_P_Y0[]};
s_Coil_A_prim_p=news; Plane Surface(news) = {ll_Coil_A_prim_p};

Physical Surface("COIL_A_PRIM_PLUS", COIL_A_PRIM_PLUS) = {s_Coil_A_prim_p};

// COIL_A_PRIM_MINUS

x_[]=Point{P_Leg_1_L_0};
P_Coil_A_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, -height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, height_Coil_PRIM/2, 0, c_Coil_A};
P_Coil_A_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_A};

l_Coil_A_prim_m[]={};
l_Coil_A_prim_m[]+=newl; Line(newl) = {P_Coil_A_prim_m_ext_0, P_Coil_A_prim_m_ext_1};
l_Coil_A_prim_m[]+=newl; Line(newl) = {P_Coil_A_prim_m_ext_1, P_Coil_A_prim_m_int_1};
l_Coil_A_prim_m[]+=newl; Line(newl) = {P_Coil_A_prim_m_int_1, P_Coil_A_prim_m_int_0};

l_Coil_A_prim_m_Y0[]={};
l_Coil_A_prim_m_Y0[]+=newl; Line(newl) = {P_Coil_A_prim_m_int_0, P_Coil_A_prim_m_ext_0};

ll_Coil_A_prim_m=newll; Curve Loop(newll) = {l_Coil_A_prim_m[], l_Coil_A_prim_m_Y0[]};
s_Coil_A_prim_m=news; Plane Surface(news) = {ll_Coil_A_prim_m};

Physical Surface("COIL_A_PRIM_MINUS", COIL_A_PRIM_MINUS) = {s_Coil_A_prim_m};

// COIL_A_SECOND_PLUS

x_[]=Point{P_Leg_1_R_0};
x_[0] += gap_Core_Coil_A+width_Coil_PRIM;
P_Coil_A_second_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A/2, -height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A/2, height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_A};

l_Coil_A_second_p[]={};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_P_ext_0, P_Coil_A_second_P_ext_1};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_P_ext_1, P_Coil_A_second_P_int_1};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_P_int_1, P_Coil_A_second_P_int_0};

l_Coil_A_second_P_Y0[]={};
l_Coil_A_second_P_Y0[]+=newl; Line(newl) = {P_Coil_A_second_P_int_0, P_Coil_A_second_P_ext_0};

ll_Coil_A_second_p=newll; Curve Loop(newll) = {l_Coil_A_second_p[], l_Coil_A_second_P_Y0[]};
s_Coil_A_second_p=news; Plane Surface(news) = {ll_Coil_A_second_p};

Physical Surface("COIL_A_SECOND_PLUS", COIL_A_SECOND_PLUS) = {s_Coil_A_second_p};

// COIL_A_SECOND_MINUS

x_[]=Point{P_Leg_1_L_0};
x_[0] -= gap_Core_Coil_A+width_Coil_PRIM;
P_Coil_A_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_A/2, -height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_A/2, height_Coil_SECOND/2, 0, c_Coil_A};
P_Coil_A_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_A};

l_Coil_A_second_m[]={};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_ext_0, P_Coil_A_second_m_ext_1};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_ext_1, P_Coil_A_second_m_int_1};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_int_1, P_Coil_A_second_m_int_0};

l_Coil_A_second_m_Y0[]={};
l_Coil_A_second_m_Y0[]+=newl; Line(newl) = {P_Coil_A_second_m_int_0, P_Coil_A_second_m_ext_0};

ll_Coil_A_second_m=newll; Curve Loop(newll) = {l_Coil_A_second_m[], l_Coil_A_second_m_Y0[]};
s_Coil_A_second_m=news; Plane Surface(news) = {ll_Coil_A_second_m};

Physical Surface("COIL_A_SECOND_MINUS", COIL_A_SECOND_MINUS) = {s_Coil_A_second_m};

// COIL_B_PRIM_PLUS

x_[]=Point{P_Leg_2_R_0};
P_Coil_B_prim_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, -height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_B};

l_Coil_B_prim_p[]={};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_P_ext_0, P_Coil_B_prim_P_ext_1};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_P_ext_1, P_Coil_B_prim_P_int_1};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_P_int_1, P_Coil_B_prim_P_int_0};

l_Coil_B_prim_P_Y0[]={};
l_Coil_B_prim_P_Y0[]+=newl; Line(newl) = {P_Coil_B_prim_P_int_0, P_Coil_B_prim_P_ext_0};

ll_Coil_B_prim_p=newll; Curve Loop(newll) = {l_Coil_B_prim_p[], l_Coil_B_prim_P_Y0[]};
s_Coil_B_prim_p=news; Plane Surface(news) = {ll_Coil_B_prim_p};

Physical Surface("COIL_B_PRIM_PLUS", COIL_B_PRIM_PLUS) = {s_Coil_B_prim_p};

// COIL_B_PRIM_MINUS

x_[]=Point{P_Leg_2_L_0};
P_Coil_B_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, -height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, height_Coil_PRIM/2, 0, c_Coil_B};
P_Coil_B_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_B};

l_Coil_B_prim_m[]={};
l_Coil_B_prim_m[]+=newl; Line(newl) = {P_Coil_B_prim_m_ext_0, P_Coil_B_prim_m_ext_1};
l_Coil_B_prim_m[]+=newl; Line(newl) = {P_Coil_B_prim_m_ext_1, P_Coil_B_prim_m_int_1};
l_Coil_B_prim_m[]+=newl; Line(newl) = {P_Coil_B_prim_m_int_1, P_Coil_B_prim_m_int_0};

l_Coil_B_prim_m_Y0[]={};
l_Coil_B_prim_m_Y0[]+=newl; Line(newl) = {P_Coil_B_prim_m_int_0, P_Coil_B_prim_m_ext_0};

ll_Coil_B_prim_m=newll; Curve Loop(newll) = {l_Coil_B_prim_m[], l_Coil_B_prim_m_Y0[]};
s_Coil_B_prim_m=news; Plane Surface(news) = {ll_Coil_B_prim_m};

Physical Surface("COIL_B_PRIM_MINUS", COIL_B_PRIM_MINUS) = {s_Coil_B_prim_m};

// COIL_B_SECOND_PLUS

x_[]=Point{P_Leg_2_R_0};
x_[0] += gap_Core_Coil_B+width_Coil_PRIM;
P_Coil_B_second_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B/2, -height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B/2, height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_B};

l_Coil_B_second_p[]={};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_P_ext_0, P_Coil_B_second_P_ext_1};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_P_ext_1, P_Coil_B_second_P_int_1};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_P_int_1, P_Coil_B_second_P_int_0};

l_Coil_B_second_P_Y0[]={};
l_Coil_B_second_P_Y0[]+=newl; Line(newl) = {P_Coil_B_second_P_int_0, P_Coil_B_second_P_ext_0};

ll_Coil_B_second_p=newll; Curve Loop(newll) = {l_Coil_B_second_p[], l_Coil_B_second_P_Y0[]};
s_Coil_B_second_p=news; Plane Surface(news) = {ll_Coil_B_second_p};

Physical Surface("COIL_B_SECOND_PLUS", COIL_B_SECOND_PLUS) = {s_Coil_B_second_p};

// COIL_B_SECOND_MINUS

x_[]=Point{P_Leg_2_L_0};
x_[0] -= gap_Core_Coil_B+width_Coil_PRIM;
P_Coil_B_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_B/2, -height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_B/2, height_Coil_SECOND/2, 0, c_Coil_B};
P_Coil_B_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_B};

l_Coil_B_second_m[]={};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_ext_0, P_Coil_B_second_m_ext_1};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_ext_1, P_Coil_B_second_m_int_1};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_int_1, P_Coil_B_second_m_int_0};

l_Coil_B_second_m_Y0[]={};
l_Coil_B_second_m_Y0[]+=newl; Line(newl) = {P_Coil_B_second_m_int_0, P_Coil_B_second_m_ext_0};

ll_Coil_B_second_m=newll; Curve Loop(newll) = {l_Coil_B_second_m[], l_Coil_B_second_m_Y0[]};
s_Coil_B_second_m=news; Plane Surface(news) = {ll_Coil_B_second_m};

Physical Surface("COIL_B_SECOND_MINUS", COIL_B_SECOND_MINUS) = {s_Coil_B_second_m};

// COIL_C_PRIM_PLUS

x_[]=Point{P_Leg_3_R_0};
P_Coil_C_prim_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_C, -height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_C+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_C, height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_C+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_C};

l_Coil_C_prim_p[]={};
l_Coil_C_prim_p[]+=newl; Line(newl) = {P_Coil_C_prim_P_ext_0, P_Coil_C_prim_P_ext_1};
l_Coil_C_prim_p[]+=newl; Line(newl) = {P_Coil_C_prim_P_ext_1, P_Coil_C_prim_P_int_1};
l_Coil_C_prim_p[]+=newl; Line(newl) = {P_Coil_C_prim_P_int_1, P_Coil_C_prim_P_int_0};

l_Coil_C_prim_P_Y0[]={};
l_Coil_C_prim_P_Y0[]+=newl; Line(newl) = {P_Coil_C_prim_P_int_0, P_Coil_C_prim_P_ext_0};

ll_Coil_C_prim_p=newll; Curve Loop(newll) = {l_Coil_C_prim_p[], l_Coil_C_prim_P_Y0[]};
s_Coil_C_prim_p=news; Plane Surface(news) = {ll_Coil_C_prim_p};

Physical Surface("COIL_C_PRIM_PLUS", COIL_C_PRIM_PLUS) = {s_Coil_C_prim_p};


// COIL_C_PRIM_MINUS

x_[]=Point{P_Leg_3_L_0};
P_Coil_C_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_C, -height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_C+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_C, height_Coil_PRIM/2, 0, c_Coil_C};
P_Coil_C_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_C+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_C};

l_Coil_C_prim_m[]={};
l_Coil_C_prim_m[]+=newl; Line(newl) = {P_Coil_C_prim_m_ext_0, P_Coil_C_prim_m_ext_1};
l_Coil_C_prim_m[]+=newl; Line(newl) = {P_Coil_C_prim_m_ext_1, P_Coil_C_prim_m_int_1};
l_Coil_C_prim_m[]+=newl; Line(newl) = {P_Coil_C_prim_m_int_1, P_Coil_C_prim_m_int_0};

l_Coil_C_prim_m_Y0[]={};
l_Coil_C_prim_m_Y0[]+=newl; Line(newl) = {P_Coil_C_prim_m_int_0, P_Coil_C_prim_m_ext_0};

ll_Coil_C_prim_m=newll; Curve Loop(newll) = {l_Coil_C_prim_m[], l_Coil_C_prim_m_Y0[]};
s_Coil_C_prim_m=news; Plane Surface(news) = {ll_Coil_C_prim_m};

Physical Surface("COIL_C_PRIM_MINUS", COIL_C_PRIM_MINUS) = {s_Coil_C_prim_m};

// COIL_C_SECOND_PLUS

x_[]=Point{P_Leg_3_R_0};
x_[0] += gap_Core_Coil_C+width_Coil_PRIM;
P_Coil_C_second_P_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_C/2, -height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_P_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_C/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_P_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_C/2, height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_P_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_C/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_C};

l_Coil_C_second_p[]={};
l_Coil_C_second_p[]+=newl; Line(newl) = {P_Coil_C_second_P_ext_0, P_Coil_C_second_P_ext_1};
l_Coil_C_second_p[]+=newl; Line(newl) = {P_Coil_C_second_P_ext_1, P_Coil_C_second_P_int_1};
l_Coil_C_second_p[]+=newl; Line(newl) = {P_Coil_C_second_P_int_1, P_Coil_C_second_P_int_0};

l_Coil_C_second_P_Y0[]={};
l_Coil_C_second_P_Y0[]+=newl; Line(newl) = {P_Coil_C_second_P_int_0, P_Coil_C_second_P_ext_0};

ll_Coil_C_second_p=newll; Curve Loop(newll) = {l_Coil_C_second_p[], l_Coil_C_second_P_Y0[]};
s_Coil_C_second_p=news; Plane Surface(news) = {ll_Coil_C_second_p};

Physical Surface("COIL_C_SECOND_PLUS", COIL_C_SECOND_PLUS) = {s_Coil_C_second_p};

// COIL_C_SECOND_MINUS

x_[]=Point{P_Leg_3_L_0};
x_[0] -= gap_Core_Coil_C+width_Coil_PRIM;
P_Coil_C_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_C/2, -height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_C/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_C/2, height_Coil_SECOND/2, 0, c_Coil_C};
P_Coil_C_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_C/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_C};

l_Coil_C_second_m[]={};
l_Coil_C_second_m[]+=newl; Line(newl) = {P_Coil_C_second_m_ext_0, P_Coil_C_second_m_ext_1};
l_Coil_C_second_m[]+=newl; Line(newl) = {P_Coil_C_second_m_ext_1, P_Coil_C_second_m_int_1};
l_Coil_C_second_m[]+=newl; Line(newl) = {P_Coil_C_second_m_int_1, P_Coil_C_second_m_int_0};

l_Coil_C_second_m_Y0[]={};
l_Coil_C_second_m_Y0[]+=newl; Line(newl) = {P_Coil_C_second_m_int_0, P_Coil_C_second_m_ext_0};

ll_Coil_C_second_m=newll; Curve Loop(newll) = {l_Coil_C_second_m[], l_Coil_C_second_m_Y0[]};
s_Coil_C_second_m=news; Plane Surface(news) = {ll_Coil_C_second_m};

Physical Surface("COIL_C_SECOND_MINUS", COIL_C_SECOND_MINUS) = {s_Coil_C_second_m};