///////////
// CORE A//
///////////
// Envelop
cy = (height_Core+gap_Transfo);
cx = 0;

P_CoreA_R_0s=newp; Point(newp) = {cx+width_Core/2.-2*r, -height_Core/2+cy, 0, c_Core};
P_CoreA_R_0c=newp; Point(newp) = {cx+width_Core/2.-2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreA_R_0e=newp; Point(newp) = {cx+width_Core/2., -height_Core/2+2*r+cy, 0, c_Core};
P_CoreA_R_1s=newp; Point(newp) = {cx+width_Core/2., height_Core/2-2*r+cy, 0, c_Core};
P_CoreA_R_1c=newp; Point(newp) = {cx+width_Core/2.-2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreA_R_1e=newp; Point(newp) = {cx+width_Core/2.-2*r, height_Core/2+cy, 0, c_Core};
P_CoreA_L_1s=newp; Point(newp) = {cx+-width_Core/2.+2*r, height_Core/2+cy, 0, c_Core};
P_CoreA_L_1c=newp; Point(newp) = {cx+-width_Core/2.+2*r, height_Core/2-2*r+cy, 0, c_Core};
P_CoreA_L_1e=newp; Point(newp) = {cx+-width_Core/2., height_Core/2-2*r+cy, 0, c_Core};
P_CoreA_L_0s=newp; Point(newp) = {cx+-width_Core/2., -height_Core/2+2*r+cy, 0, c_Core};
P_CoreA_L_0c=newp; Point(newp) = {cx+-width_Core/2.+2*r, -height_Core/2+2*r+cy, 0, c_Core};
P_CoreA_L_0e=newp; Point(newp) = {cx+-width_Core/2.+2*r, -height_Core/2+cy, 0, c_Core};
l_CoreA_Env[]={};
l_CoreA_Env[]+=newl; Circle(newl) = {P_CoreA_R_0s, P_CoreA_R_0c, P_CoreA_R_0e};
l_CoreA_Env[]+=newl; Line(newl) = {P_CoreA_R_0e, P_CoreA_R_1s};
l_CoreA_Env[]+=newl; Circle(newl) = {P_CoreA_R_1s, P_CoreA_R_1c, P_CoreA_R_1e};
l_CoreA_Env[]+=newl; Line(newl) = {P_CoreA_R_1e, P_CoreA_L_1s};
l_CoreA_Env[]+=newl; Circle(newl) = {P_CoreA_L_1s, P_CoreA_L_1c, P_CoreA_L_1e};
l_CoreA_Env[]+=newl; Line(newl) = {P_CoreA_L_1e, P_CoreA_L_0s};
l_CoreA_Env[]+=newl; Circle(newl) = {P_CoreA_L_0s, P_CoreA_L_0c, P_CoreA_L_0e};
l_CoreA_Env[]+=newl; Line(newl) = {P_CoreA_L_0e, P_CoreA_R_0s};
ll_CoreA_Env=newll; Curve Loop(newll) = {l_CoreA_Env[]};

base = height_Core/2 - height_Window/2 - gap_Core;
P_LegA_1_L_0=newp; Point(newp) = {cx+-width_Core/2., -height_Window/2.+cy, 0, c_Core};
P_LegA_1_R_0=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg,  -height_Window/2+cy, 0, c_Core};
P_LegA_2_L_0=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg, -height_Window/2.+cy, 0, c_Core};
P_LegA_2_R_0=newp; Point(newp) = {cx+width_Core/2., -height_Window/2.+cy, 0, c_Core};

If (gap_Core==0)
    
    // AIR_12_WINDOW
    P_12_A_Window_L_1s=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_12_A_Window_L_1c=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_12_A_Window_L_1e=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, height_Window/2+cy, 0, c_Core};
    P_12_A_Window_R_1s=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, height_Window/2+cy, 0, c_Core};
    P_12_A_Window_R_1c=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, height_Window/2 - r+cy, 0, c_Core};
    P_12_A_Window_R_1e=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_12_A_Window_R_0s=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg, -height_Window/2 + r+cy, 0, c_Core};
    P_12_A_Window_R_0c=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_A_Window_R_0e=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, -height_Window/2+cy, 0, c_Core};
    P_12_A_Window_L_0s=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, -height_Window/2+cy, 0, c_Core};
    P_12_A_Window_L_0c=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, -height_Window/2 + r+cy, 0, c_Core};
    P_12_A_Window_L_0e=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg, -height_Window/2 + r+cy, 0, c_Core};
    
    l_12_A_Window[]={};
    l_12_A_Window[]+=newl; Circle(newl) = {P_12_A_Window_L_1s, P_12_A_Window_L_1c, P_12_A_Window_L_1e};
    l_12_A_Window[]+=newl; Line(newl) = {P_12_A_Window_L_1e, P_12_A_Window_R_1s};
    l_12_A_Window[]+=newl; Circle(newl) = {P_12_A_Window_R_1s, P_12_A_Window_R_1c, P_12_A_Window_R_1e};
    l_12_A_Window[]+=newl; Line(newl) = {P_12_A_Window_R_1e, P_12_A_Window_R_0s};
    l_12_A_Window[]+=newl; Circle(newl) = {P_12_A_Window_R_0s, P_12_A_Window_R_0c, P_12_A_Window_R_0e};
    l_12_A_Window[]+=newl; Line(newl) = {P_12_A_Window_R_0e, P_12_A_Window_L_0s};
    l_12_A_Window[]+=newl; Circle(newl) = {P_12_A_Window_L_0s, P_12_A_Window_L_0c, P_12_A_Window_L_0e};
    l_12_A_Window[]+=newl; Line(newl) = {P_12_A_Window_L_0e, P_12_A_Window_L_1s};
    
    
Else
    P_LegA_1_L_0=newp; Point(newp) = {cx+-width_Core/2., -height_Window/2.+cy, 0, c_Base};
    P_LegA_1_R_0s=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg-r, -height_Window/2.+cy, 0, c_Base};
    P_LegA_1_R_0c=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg-r, -height_Window/2.+r+cy, 0, c_Base};
    P_LegA_1_R_0e=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg, -height_Window/2.+r+cy, 0, c_Base};
    P_LegA_1_L_1=newp; Point(newp) = {cx+-width_Core/2., height_Core/2.+cy, 0, c_Core};
    P_LegA_1_R_1s=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
    P_LegA_1_R_1c=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, height_Window/2 - r+cy, 0, c_Core};
    P_LegA_1_R_1e=newp; Point(newp) = {cx+-width_Core/2.+width_Core_Leg + r, height_Window/2+cy, 0, c_Core};


    P_LegA_2_L_0s=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg, -height_Window/2.+r+cy, 0, c_Base};
    P_LegA_2_L_0c=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg+r, -height_Window/2.+r+cy, 0, c_Base};
    P_LegA_2_L_0e=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg+r, -height_Window/2.+cy, 0, c_Base};
    P_LegA_2_R_0=newp; Point(newp) = {cx+width_Core/2., -height_Window/2.+cy, 0, c_Base};

    P_LegA_2_L_1s=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, height_Window/2+cy, 0, c_Core};
    P_LegA_2_L_1c=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg - r, height_Window/2 - r+cy, 0, c_Core};
    P_LegA_2_L_1e=newp; Point(newp) = {cx+width_Core/2.-width_Core_Leg, height_Window/2 - r+cy, 0, c_Core};
     
    P_LegA_2_R_1=newp; Point(newp) = {cx+width_Core/2., height_Core/2.+cy, 0, c_Core};
    
        
    l_CoreA_12_In[]={};
    l_CoreA_12_In[]+=newl; Circle(newl) = {P_LegA_1_R_0s, P_LegA_1_R_0c, P_LegA_1_R_0e};
    l_CoreA_12_In[]+=newl; Line(newl) = {P_LegA_1_R_0e, P_LegA_1_R_1s};
    l_CoreA_12_In[]+=newl; Circle(newl) = {P_LegA_1_R_1s, P_LegA_1_R_1c, P_LegA_1_R_1e};
    l_CoreA_12_In[]+=newl; Line(newl) = {P_LegA_1_R_1e, P_LegA_2_L_1s};
    l_CoreA_12_In[]+=newl; Circle(newl) = {P_LegA_2_L_1s, P_LegA_2_L_1c, P_LegA_2_L_1e};
    l_CoreA_12_In[]+=newl; Line(newl) = {P_LegA_2_L_1e, P_LegA_2_L_0s};
    l_CoreA_12_In[]+=newl; Circle(newl) = {P_LegA_2_L_0s, P_LegA_2_L_0c, P_LegA_2_L_0e};
    
    l_CoreA_21_Out[]={};
    l_CoreA_21_Out[]+=newl; Line(newl) = {P_LegA_2_R_0, P_LegA_2_R_1};
    l_CoreA_21_Out[]+=newl; Line(newl) = {P_LegA_2_R_1, P_LegA_1_L_1};
    l_CoreA_21_Out[]+=newl; Line(newl) = {P_LegA_1_L_1, P_LegA_1_L_0};
    
    l_CoreA_Leg_1_Y0[]={};
    l_CoreA_Leg_1_Y0[]+=newl; Line(newl) = {P_LegA_1_L_0, P_LegA_1_R_0s};

    l_CoreA_Leg_2_Y0[]={};
    l_CoreA_Leg_2_Y0[]+=newl; Line(newl) = {P_LegA_2_L_0e, P_LegA_2_R_0};

    ll_CoreA=newll; Curve Loop(newll) = {l_CoreA_12_In[], l_CoreA_Leg_2_Y0[], l_CoreA_21_Out[], l_CoreA_Leg_1_Y0[]};

    // Base
    p_L_A_0=newp; Point(newp) = {cx+-width_Core/2., -height_Core/2+cy, 0, c_Core};
    x_[] = Point{P_LegA_1_L_0};
    P_LegA_1_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegA_1_R_0s};
    P_LegA_1_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegA_2_L_0e};
    P_LegA_2_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{P_LegA_2_R_0};
    P_LegA_2_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    p_R_A_0=newp; Point(newp) = {cx+width_Core/2., -height_Core/2+cy, 0, c_Core};
    l_A_Base[]={};
    l_A_Base[]+=newl; Line(newl) = {P_LegA_1_L_0_B, P_LegA_1_R_0_B};
    l_A_Base[]+=newl; Line(newl) = {P_LegA_1_R_0_B, P_LegA_2_L_0_B};
    l_A_Base[]+=newl; Line(newl) = {P_LegA_2_L_0_B, P_LegA_2_R_0_B};
    l_A_Base[]+=newl; Line(newl) = {P_LegA_2_R_0_B, p_R_A_0};
    l_A_Base[]+=newl; Line(newl) = {p_R_A_0, p_L_A_0};
    l_A_Base[]+=newl; Line(newl) = {p_L_A_0, P_LegA_1_L_0_B};

    ll_A_Base=newll; Curve Loop(newll) = {l_A_Base[]};
EndIf

// COIL_A_PRIM_PLUS

x_[]=Point{P_LegA_1_R_0};
P_Coil_A_prim_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, -height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_PRIM, -height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_PRIM, height_Coil_PRIM/2+cy, 0, c_Coil_A};

l_Coil_A_prim_p[]={};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_p_ext_0, P_Coil_A_prim_p_ext_1};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_p_ext_1, P_Coil_A_prim_p_int_1};
l_Coil_A_prim_p[]+=newl; Line(newl) = {P_Coil_A_prim_p_int_1, P_Coil_A_prim_p_int_0};

l_Coil_A_prim_p_Y0[]={};
l_Coil_A_prim_p_Y0[]+=newl; Line(newl) = {P_Coil_A_prim_p_int_0, P_Coil_A_prim_p_ext_0};

ll_Coil_A_prim_p=newll; Curve Loop(newll) = {l_Coil_A_prim_p[], l_Coil_A_prim_p_Y0[]};
s_Coil_A_prim_p=news; Plane Surface(news) = {ll_Coil_A_prim_p};

Physical Surface("COIL_A_PRIM_PLUS", COIL_A_PRIM_PLUS) = {s_Coil_A_prim_p};

// COIL_A_PRIM_MINUS

x_[]=Point{P_LegA_1_L_0};
P_Coil_A_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, -height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_PRIM), -height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, height_Coil_PRIM/2+cy, 0, c_Coil_A};
P_Coil_A_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_PRIM), height_Coil_PRIM/2+cy, 0, c_Coil_A};

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

x_[]=Point{P_LegA_2_R_0};
P_Coil_A_second_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, -height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_SECOND, -height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A, height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_A+width_Coil_SECOND, height_Coil_SECOND/2+cy, 0, c_Coil_A};

l_Coil_A_second_p[]={};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_p_ext_0, P_Coil_A_second_p_ext_1};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_p_ext_1, P_Coil_A_second_p_int_1};
l_Coil_A_second_p[]+=newl; Line(newl) = {P_Coil_A_second_p_int_1, P_Coil_A_second_p_int_0};

l_Coil_A_second_p_Y0[]={};
l_Coil_A_second_p_Y0[]+=newl; Line(newl) = {P_Coil_A_second_p_int_0, P_Coil_A_second_p_ext_0};

ll_Coil_A_second_p=newll; Curve Loop(newll) = {l_Coil_A_second_p[], l_Coil_A_second_p_Y0[]};
s_Coil_A_second_p=news; Plane Surface(news) = {ll_Coil_A_second_p};

Physical Surface("COIL_A_SECOND_PLUS", COIL_A_SECOND_PLUS) = {s_Coil_A_second_p};

// COIL_A_SECOND_MINUS

x_[]=Point{P_LegA_2_L_0};
P_Coil_A_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, -height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_SECOND), -height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_A, height_Coil_SECOND/2+cy, 0, c_Coil_A};
P_Coil_A_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_A+width_Coil_SECOND), height_Coil_SECOND/2+cy, 0, c_Coil_A};

l_Coil_A_second_m[]={};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_ext_0, P_Coil_A_second_m_ext_1};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_ext_1, P_Coil_A_second_m_int_1};
l_Coil_A_second_m[]+=newl; Line(newl) = {P_Coil_A_second_m_int_1, P_Coil_A_second_m_int_0};

l_Coil_A_second_m_Y0[]={};
l_Coil_A_second_m_Y0[]+=newl; Line(newl) = {P_Coil_A_second_m_int_0, P_Coil_A_second_m_ext_0};

ll_Coil_A_second_m=newll; Curve Loop(newll) = {l_Coil_A_second_m[], l_Coil_A_second_m_Y0[]};
s_Coil_A_second_m=news; Plane Surface(news) = {ll_Coil_A_second_m};

Physical Surface("COIL_A_SECOND_MINUS", COIL_A_SECOND_MINUS) = {s_Coil_A_second_m};