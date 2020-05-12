///////////
// CORE B//
///////////
// Envelop
cy = 0;
cx = 0;
pos_LEFT = width_Core_Leg/2+width_Window+width_external_Core_Leg;
pos_RIGHT = width_Core_Leg/2+width_Window+width_external_Core_Leg;

P_CoreB_R_0s=newp; Point(newp) = {cx+pos_RIGHT-2*r, -height_Core/2+cy, 0, c_Core};
P_CoreB_R_0c=newp; Point(newp) = {cx+pos_RIGHT-2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreB_R_0e=newp; Point(newp) = {cx+pos_RIGHT, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreB_R_1s=newp; Point(newp) = {cx+pos_RIGHT, height_Core/2-2*r+cy, 0, c_Core};
P_CoreB_R_1c=newp; Point(newp) = {cx+pos_RIGHT-2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreB_R_1e=newp; Point(newp) = {cx+pos_RIGHT-2*r, height_Core/2+cy, 0, c_Core};
P_CoreB_L_1s=newp; Point(newp) = {cx-pos_LEFT+2*r, height_Core/2+cy, 0, c_Core};
P_CoreB_L_1c=newp; Point(newp) = {cx-pos_LEFT+2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreB_L_1e=newp; Point(newp) = {cx-pos_LEFT, height_Core/2-2*r+cy, 0, c_Core};
P_CoreB_L_0s=newp; Point(newp) = {cx-pos_LEFT, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreB_L_0c=newp; Point(newp) = {cx-pos_LEFT+2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreB_L_0e=newp; Point(newp) = {cx-pos_LEFT+2*r, -height_Core/2+cy, 0, c_Core};
l_CoreB_Env[]={};
l_CoreB_Env[]+=newl; Circle(newl) = {P_CoreB_R_0s, P_CoreB_R_0c, P_CoreB_R_0e};
l_CoreB_Env[]+=newl; Line(newl) = {P_CoreB_R_0e, P_CoreB_R_1s};
l_CoreB_Env[]+=newl; Circle(newl) = {P_CoreB_R_1s, P_CoreB_R_1c, P_CoreB_R_1e};
l_CoreB_Env[]+=newl; Line(newl) = {P_CoreB_R_1e, P_CoreB_L_1s};
l_CoreB_Env[]+=newl; Circle(newl) = {P_CoreB_L_1s, P_CoreB_L_1c, P_CoreB_L_1e};
l_CoreB_Env[]+=newl; Line(newl) = {P_CoreB_L_1e, P_CoreB_L_0s};
l_CoreB_Env[]+=newl; Circle(newl) = {P_CoreB_L_0s, P_CoreB_L_0c, P_CoreB_L_0e};
l_CoreB_Env[]+=newl; Line(newl) = {P_CoreB_L_0e, P_CoreB_R_0s};
ll_CoreB_Env=newll; Curve Loop(newll) = {l_CoreB_Env[]};

base = height_Core/2 - height_Window/2 - gap_Core;
P_LegB_1_L_0=newp; Point(newp) = {cx+-pos_LEFT, -height_Window/2.+cy, 0, c_Core};
P_LegB_1_R_0=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg,  -height_Window/2+cy, 0, c_Core};
P_LegB_2_L_0=newp; Point(newp) = {cx+(-width_Core_Leg)/2.,cy+ -height_Window/2., 0, c_Core};
P_LegB_2_R_0=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+-height_Window/2., 0, c_Core};
P_LegB_3_L_0=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, -height_Window/2.+cy, 0, c_Core};
P_LegB_3_R_0=newp; Point(newp) = {cx+pos_RIGHT, -height_Window/2.+cy, 0, c_Core};
If (gap_Core==0)
    P_12_B_Window_L_1s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_12_B_Window_L_1c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_12_B_Window_L_1e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2+cy, 0, c_Core};
    P_12_B_Window_R_1s=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, height_Window/2+cy, 0, c_Core};
    P_12_B_Window_R_1c=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, height_Window/2 - r+cy, 0, c_Core};
    P_12_B_Window_R_1e=newp; Point(newp) = {cx+(-width_Core_Leg)/2., height_Window/2 - r+cy, 0, c_Core};
    P_12_B_Window_R_0s=newp; Point(newp) = {cx+(-width_Core_Leg)/2., -height_Window/2 + r+cy, 0, c_Core};
    P_12_B_Window_R_0c=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_B_Window_R_0e=newp; Point(newp) = {cx+(-width_Core_Leg)/2. - r, -height_Window/2+cy, 0, c_Core};
    P_12_B_Window_L_0s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, -height_Window/2+cy, 0, c_Core};
    P_12_B_Window_L_0c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_B_Window_L_0e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, -height_Window/2 + r+cy, 0, c_Core};
    
    l_12_B_Window[]={};
    l_12_B_Window[]+=newl; Circle(newl) = {P_12_B_Window_L_1s, P_12_B_Window_L_1c, P_12_B_Window_L_1e};
    l_12_B_Window[]+=newl; Line(newl) = {P_12_B_Window_L_1e, P_12_B_Window_R_1s};
    l_12_B_Window[]+=newl; Circle(newl) = {P_12_B_Window_R_1s, P_12_B_Window_R_1c, P_12_B_Window_R_1e};
    l_12_B_Window[]+=newl; Line(newl) = {P_12_B_Window_R_1e, P_12_B_Window_R_0s};
    l_12_B_Window[]+=newl; Circle(newl) = {P_12_B_Window_R_0s, P_12_B_Window_R_0c, P_12_B_Window_R_0e};
    l_12_B_Window[]+=newl; Line(newl) = {P_12_B_Window_R_0e, P_12_B_Window_L_0s};
    l_12_B_Window[]+=newl; Circle(newl) = {P_12_B_Window_L_0s, P_12_B_Window_L_0c, P_12_B_Window_L_0e};
    l_12_B_Window[]+=newl; Line(newl) = {P_12_B_Window_L_0e, P_12_B_Window_L_1s};
    
    // AIR_23_WINDOW
    P_23_B_Window_L_1s=newp; Point(newp) = {cx+(width_Core_Leg)/2., cy+height_Window/2 - r, 0, c_Core};
    P_23_B_Window_L_1c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+height_Window/2 - r, 0, c_Core};
    P_23_B_Window_L_1e=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+height_Window/2, 0, c_Core};
    P_23_B_Window_R_1s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+height_Window/2, 0, c_Core};
    P_23_B_Window_R_1c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+height_Window/2 - r, 0, c_Core};
    P_23_B_Window_R_1e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, cy+height_Window/2 - r, 0, c_Core};
    P_23_B_Window_R_0s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg, cy+-height_Window/2 + r, 0, c_Core};
    P_23_B_Window_R_0c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+-height_Window/2 + r, 0, c_Core};
    P_23_B_Window_R_0e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r, cy+-height_Window/2, 0, c_Core};
    P_23_B_Window_L_0s=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+-height_Window/2, 0, c_Core};
    P_23_B_Window_L_0c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r, cy+-height_Window/2 + r, 0, c_Core};
    P_23_B_Window_L_0e=newp; Point(newp) = {cx+(width_Core_Leg)/2., cy+-height_Window/2 + r, 0, c_Core};
    
    l_23_B_Window[]={};
    l_23_B_Window[]+=newl; Circle(newl) = {P_23_B_Window_L_1s, P_23_B_Window_L_1c, P_23_B_Window_L_1e};
    l_23_B_Window[]+=newl; Line(newl) = {P_23_B_Window_L_1e, P_23_B_Window_R_1s};
    l_23_B_Window[]+=newl; Circle(newl) = {P_23_B_Window_R_1s, P_23_B_Window_R_1c, P_23_B_Window_R_1e};
    l_23_B_Window[]+=newl; Line(newl) = {P_23_B_Window_R_1e, P_23_B_Window_R_0s};
    l_23_B_Window[]+=newl; Circle(newl) = {P_23_B_Window_R_0s, P_23_B_Window_R_0c, P_23_B_Window_R_0e};
    l_23_B_Window[]+=newl; Line(newl) = {P_23_B_Window_R_0e, P_23_B_Window_L_0s};
    l_23_B_Window[]+=newl; Circle(newl) = {P_23_B_Window_L_0s, P_23_B_Window_L_0c, P_23_B_Window_L_0e};
    l_23_B_Window[]+=newl; Line(newl) = {P_23_B_Window_L_0e, P_23_B_Window_L_1s};

Else
    P_LegB_1_L_0=newp; Point(newp) = {cx+-pos_LEFT,cy+ -height_Window/2., 0, c_Base};
    P_LegB_1_R_0s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg-r, -height_Window/2.+cy, 0, c_Base};
    P_LegB_1_R_0c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg-r, -height_Window/2.+r+cy, 0, c_Base};
    P_LegB_1_R_0e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, -height_Window/2.+r+cy, 0, c_Base};
    P_LegB_1_L_1=newp; Point(newp) = {cx+-pos_LEFT ,cy+ height_Core/2, 0, c_Core};
    P_LegB_1_R_1s=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_LegB_1_R_1c=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_LegB_1_R_1e=newp; Point(newp) = {cx+-pos_LEFT+width_external_Core_Leg + r, height_Window/2+cy, 0, c_Core};

    P_LegB_2_L_0s=newp; Point(newp) = {cx+(-width_Core_Leg)/2, -height_Window/2.+r+cy, 0, c_Base};
    P_LegB_2_L_0c=newp; Point(newp) = {cx+(-width_Core_Leg)/2+r, -height_Window/2.+r+cy, 0, c_Base};
    P_LegB_2_L_0e=newp; Point(newp) = {cx+(-width_Core_Leg)/2+r, -height_Window/2.+cy, 0, c_Base};
    P_LegB_2_R_0s=newp; Point(newp) = {cx+(width_Core_Leg)/2.-r,cy+ -height_Window/2., 0, c_Base};
    P_LegB_2_R_0c=newp; Point(newp) = {cx+(width_Core_Leg)/2.-r,cy+ -height_Window/2.+r, 0, c_Base};
    P_LegB_2_R_0e=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+ -height_Window/2.+r, 0, c_Base};

    P_LegB_2_L_1s=newp; Point(newp) = {cx+(-width_Core_Leg)/2 - r, height_Window/2+cy, 0, c_Core};
    P_LegB_2_L_1c=newp; Point(newp) = {cx+(-width_Core_Leg)/2 - r, height_Window/2 - r+cy, 0, c_Core};
    P_LegB_2_L_1e=newp; Point(newp) = {cx+(-width_Core_Leg)/2, height_Window/2 - r+cy, 0, c_Core};
    P_LegB_2_R_1s=newp; Point(newp) = {cx+(width_Core_Leg)/2.,cy+ height_Window/2 - r, 0, c_Core};
    P_LegB_2_R_1c=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r,cy+ height_Window/2 - r, 0, c_Core};
    P_LegB_2_R_1e=newp; Point(newp) = {cx+(width_Core_Leg)/2. + r,cy+ height_Window/2, 0, c_Core};

    P_LegB_3_L_0s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg,cy+ -height_Window/2.+r, 0, c_Base};
    P_LegB_3_L_0c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg+r,cy+ -height_Window/2.+r, 0, c_Base};
    P_LegB_3_L_0e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg+r,cy+ -height_Window/2., 0, c_Base};
    P_LegB_3_R_0=newp; Point(newp) = {cx+pos_RIGHT,cy+ -height_Window/2., 0, c_Base};

    P_LegB_3_L_1s=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r,cy+ height_Window/2, 0, c_Core};
    P_LegB_3_L_1c=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg - r,cy+ height_Window/2 - r, 0, c_Core};
    P_LegB_3_L_1e=newp; Point(newp) = {cx+pos_RIGHT-width_external_Core_Leg,cy+ height_Window/2 - r, 0, c_Core};

    P_LegB_3_R_1=newp; Point(newp) = {cx+pos_RIGHT, cy+height_Core/2., 0, c_Core};

    l_CoreB_12_In[]={};
    l_CoreB_12_In[]+=newl; Circle(newl) = {P_LegB_1_R_0s, P_LegB_1_R_0c, P_LegB_1_R_0e};
    l_CoreB_12_In[]+=newl; Line(newl) = {P_LegB_1_R_0e, P_LegB_1_R_1s};
    l_CoreB_12_In[]+=newl; Circle(newl) = {P_LegB_1_R_1s, P_LegB_1_R_1c, P_LegB_1_R_1e};
    l_CoreB_12_In[]+=newl; Line(newl) = {P_LegB_1_R_1e, P_LegB_2_L_1s};
    l_CoreB_12_In[]+=newl; Circle(newl) = {P_LegB_2_L_1s, P_LegB_2_L_1c, P_LegB_2_L_1e};
    l_CoreB_12_In[]+=newl; Line(newl) = {P_LegB_2_L_1e, P_LegB_2_L_0s};
    l_CoreB_12_In[]+=newl; Circle(newl) = {P_LegB_2_L_0s, P_LegB_2_L_0c, P_LegB_2_L_0e};
    
    l_CoreB_23_In[]={};
    l_CoreB_23_In[]+=newl; Circle(newl) = {P_LegB_2_R_0s, P_LegB_2_R_0c, P_LegB_2_R_0e};
    l_CoreB_23_In[]+=newl; Line(newl) = {P_LegB_2_R_0e, P_LegB_2_R_1s};
    l_CoreB_23_In[]+=newl; Circle(newl) = {P_LegB_2_R_1s, P_LegB_2_R_1c, P_LegB_2_R_1e};
    l_CoreB_23_In[]+=newl; Line(newl) = {P_LegB_2_R_1e, P_LegB_3_L_1s};
    l_CoreB_23_In[]+=newl; Circle(newl) = {P_LegB_3_L_1s, P_LegB_3_L_1c, P_LegB_3_L_1e};
    l_CoreB_23_In[]+=newl; Line(newl) = {P_LegB_3_L_1e, P_LegB_3_L_0s};
    l_CoreB_23_In[]+=newl; Circle(newl) = {P_LegB_3_L_0s, P_LegB_3_L_0c, P_LegB_3_L_0e};
    
    l_CoreB_31_Out[]={};
    l_CoreB_31_Out[]+=newl; Line(newl) = {P_LegB_3_R_0, P_LegB_3_R_1};
    l_CoreB_31_Out[]+=newl; Line(newl) = {P_LegB_3_R_1, P_LegB_1_L_1};
    l_CoreB_31_Out[]+=newl; Line(newl) = {P_LegB_1_L_1, P_LegB_1_L_0};
    
    
    l_CoreB_Leg_1_Y0[]={};
    l_CoreB_Leg_1_Y0[]+=newl; Line(newl) = {P_LegB_1_L_0, P_LegB_1_R_0s};

    l_CoreB_Leg_2_Y0[]={};
    l_CoreB_Leg_2_Y0[]+=newl; Line(newl) = {P_LegB_2_L_0e, P_LegB_2_R_0s};

    l_CoreB_Leg_3_Y0[]={};
    l_CoreB_Leg_3_Y0[]+=newl; Line(newl) = {P_LegB_3_L_0e, P_LegB_3_R_0};

    ll_CoreB=newll; Curve Loop(newll) = {l_CoreB_12_In[], l_CoreB_Leg_2_Y0[],
                                         l_CoreB_23_In[], l_CoreB_Leg_3_Y0[], 
                                         l_CoreB_31_Out[], l_CoreB_Leg_1_Y0[]};

    // Base
    P_L_B_0=newp; Point(newp) = {cx+-pos_LEFT, -height_Core/2+cy, 0, c_Core};
    x_[] = Point{P_LegB_1_L_0};
    P_LegB_1_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegB_1_R_0s};
    P_LegB_1_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegB_2_L_0e};
    P_LegB_2_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegB_2_R_0s};
    P_LegB_2_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegB_3_L_0e};
    P_LegB_3_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegB_3_R_0};
    P_LegB_3_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    P_R_B_0=newp; Point(newp) = {cx+pos_RIGHT,cy+ -height_Core/2, 0, c_Core};
    l_B_Base[]={};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_1_L_0_B, P_LegB_1_R_0_B};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_1_R_0_B, P_LegB_2_L_0_B};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_2_L_0_B, P_LegB_2_R_0_B};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_2_R_0_B, P_LegB_3_L_0_B};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_3_L_0_B, P_LegB_3_R_0_B};
    l_B_Base[]+=newl; Line(newl) = {P_LegB_3_R_0_B, P_R_B_0};
    l_B_Base[]+=newl; Line(newl) = {P_R_B_0, P_L_B_0};
    l_B_Base[]+=newl; Line(newl) = {P_L_B_0, P_LegB_1_L_0_B};

    ll_B_Base=newll; Curve Loop(newll) = {l_B_Base[]};
EndIf

// COIL_B_PRIM_PLUS

x_[]=Point{P_LegB_2_R_0};
P_Coil_B_prim_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, -height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_PRIM, -height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_PRIM, height_Coil_PRIM/2+cy, 0, c_Coil_B};

l_Coil_B_prim_p[]={};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_p_ext_0, P_Coil_B_prim_p_ext_1};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_p_ext_1, P_Coil_B_prim_p_int_1};
l_Coil_B_prim_p[]+=newl; Line(newl) = {P_Coil_B_prim_p_int_1, P_Coil_B_prim_p_int_0};

l_Coil_B_prim_p_Y0[]={};
l_Coil_B_prim_p_Y0[]+=newl; Line(newl) = {P_Coil_B_prim_p_int_0, P_Coil_B_prim_p_ext_0};

ll_Coil_B_prim_p=newll; Curve Loop(newll) = {l_Coil_B_prim_p[], l_Coil_B_prim_p_Y0[]};
s_Coil_B_prim_p=news; Plane Surface(news) = {ll_Coil_B_prim_p};

Physical Surface("COIL_B_PRIM_PLUS", COIL_B_PRIM_PLUS) = {s_Coil_B_prim_p};

// COIL_B_PRIM_MINUS

x_[]=Point{P_LegB_2_L_0};
P_Coil_B_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, -height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_PRIM), -height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, height_Coil_PRIM/2+cy, 0, c_Coil_B};
P_Coil_B_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_PRIM), height_Coil_PRIM/2+cy, 0, c_Coil_B};

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

x_[]=Point{P_LegB_2_R_0};
x_[0] += gap_Core_Coil+width_Coil_PRIM;
P_Coil_B_second_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, -height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_SECOND, -height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B, height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_B+width_Coil_SECOND, height_Coil_SECOND/2+cy, 0, c_Coil_B};

l_Coil_B_second_p[]={};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_p_ext_0, P_Coil_B_second_p_ext_1};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_p_ext_1, P_Coil_B_second_p_int_1};
l_Coil_B_second_p[]+=newl; Line(newl) = {P_Coil_B_second_p_int_1, P_Coil_B_second_p_int_0};

l_Coil_B_second_p_Y0[]={};
l_Coil_B_second_p_Y0[]+=newl; Line(newl) = {P_Coil_B_second_p_int_0, P_Coil_B_second_p_ext_0};

ll_Coil_B_second_p=newll; Curve Loop(newll) = {l_Coil_B_second_p[], l_Coil_B_second_p_Y0[]};
s_Coil_B_second_p=news; Plane Surface(news) = {ll_Coil_B_second_p};

Physical Surface("COIL_B_SECOND_PLUS", COIL_B_SECOND_PLUS) = {s_Coil_B_second_p};

// COIL_B_SECOND_MINUS

x_[]=Point{P_LegB_2_L_0};
x_[0] -= gap_Core_Coil+width_Coil_PRIM;
P_Coil_B_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, -height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_SECOND), -height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_B, height_Coil_SECOND/2+cy, 0, c_Coil_B};
P_Coil_B_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_B+width_Coil_SECOND), height_Coil_SECOND/2+cy, 0, c_Coil_B};

l_Coil_B_second_m[]={};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_ext_0, P_Coil_B_second_m_ext_1};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_ext_1, P_Coil_B_second_m_int_1};
l_Coil_B_second_m[]+=newl; Line(newl) = {P_Coil_B_second_m_int_1, P_Coil_B_second_m_int_0};

l_Coil_B_second_m_Y0[]={};
l_Coil_B_second_m_Y0[]+=newl; Line(newl) = {P_Coil_B_second_m_int_0, P_Coil_B_second_m_ext_0};

ll_Coil_B_second_m=newll; Curve Loop(newll) = {l_Coil_B_second_m[], l_Coil_B_second_m_Y0[]};
s_Coil_B_second_m=news; Plane Surface(news) = {ll_Coil_B_second_m};

Physical Surface("COIL_B_SECOND_MINUS", COIL_B_SECOND_MINUS) = {s_Coil_B_second_m};