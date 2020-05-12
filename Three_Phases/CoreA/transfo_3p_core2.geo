
Include "transfo_3p_core_common.pro";

Solver.AutoShowLastStep = 0; // don't automatically show the last time step

// CORE
// Envelop
P_Core_R_0s=newp; Point(newp) = {width_Core/2.-2*r, -height_Core/2, 0, c_Core};
P_Core_R_0c=newp; Point(newp) = {width_Core/2.-2*r, -height_Core/2+2*r, 0, c_Core};
P_Core_R_0e=newp; Point(newp) = {width_Core/2., -height_Core/2+2*r, 0, c_Core};
P_Core_R_1s=newp; Point(newp) = {width_Core/2., height_Core/2-2*r, 0, c_Core};
P_Core_R_1c=newp; Point(newp) = {width_Core/2.-2*r, height_Core/2-2*r, 0, c_Core};
P_Core_R_1e=newp; Point(newp) = {width_Core/2.-2*r, height_Core/2, 0, c_Core};
P_Core_L_1s=newp; Point(newp) = {-width_Core/2.+2*r, height_Core/2, 0, c_Core};
P_Core_L_1c=newp; Point(newp) = {-width_Core/2.+2*r, height_Core/2-2*r, 0, c_Core};
P_Core_L_1e=newp; Point(newp) = {-width_Core/2., height_Core/2-2*r, 0, c_Core};
P_Core_L_0s=newp; Point(newp) = {-width_Core/2., -height_Core/2+2*r, 0, c_Core};
P_Core_L_0c=newp; Point(newp) = {-width_Core/2.+2*r, -height_Core/2+2*r, 0, c_Core};
P_Core_L_0e=newp; Point(newp) = {-width_Core/2.+2*r, -height_Core/2, 0, c_Core};
l_Core_Env[]={};
l_Core_Env[]+=newl; Circle(newl) = {P_Core_R_0s, P_Core_R_0c, P_Core_R_0e};
l_Core_Env[]+=newl; Line(newl) = {P_Core_R_0e, P_Core_R_1s};
l_Core_Env[]+=newl; Circle(newl) = {P_Core_R_1s, P_Core_R_1c, P_Core_R_1e};
l_Core_Env[]+=newl; Line(newl) = {P_Core_R_1e, P_Core_L_1s};
l_Core_Env[]+=newl; Circle(newl) = {P_Core_L_1s, P_Core_L_1c, P_Core_L_1e};
l_Core_Env[]+=newl; Line(newl) = {P_Core_L_1e, P_Core_L_0s};
l_Core_Env[]+=newl; Circle(newl) = {P_Core_L_0s, P_Core_L_0c, P_Core_L_0e};
l_Core_Env[]+=newl; Line(newl) = {P_Core_L_0e, P_Core_R_0s};
ll_Env=newll; Curve Loop(newll) = {l_Core_Env[]};

base = height_Core/2 - height_Window/2 - gap_Core;
p_Leg_1_L_0=newp; Point(newp) = {-width_Core/2., -height_Window/2., 0, c_Core};
p_Leg_1_R_0=newp; Point(newp) = {-width_Core/2.+width_Core_Leg,  -height_Window/2, 0, c_Core};
p_Leg_2_L_0=newp; Point(newp) = {(-central_width_Core_Leg)/2., -height_Window/2., 0, c_Core};
p_Leg_2_R_0=newp; Point(newp) = {(central_width_Core_Leg)/2., -height_Window/2., 0, c_Core};
p_Leg_3_L_0=newp; Point(newp) = {width_Core/2.-width_Core_Leg, -height_Window/2., 0, c_Core};
p_Leg_3_R_0=newp; Point(newp) = {width_Core/2., -height_Window/2., 0, c_Core};

If (gap_Core==0)
    
    // AIR_12_WINDOW
    p_12_Window_L_1s=newp; Point(newp) = {-width_Core/2.+width_Core_Leg, height_Window/2 - r, 0, c_Core};
    p_12_Window_L_1c=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, height_Window/2 - r, 0, c_Core};
    p_12_Window_L_1e=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, height_Window/2, 0, c_Core};
    p_12_Window_R_1s=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r, height_Window/2, 0, c_Core};
    p_12_Window_R_1c=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r, height_Window/2 - r, 0, c_Core};
    p_12_Window_R_1e=newp; Point(newp) = {(-central_width_Core_Leg)/2., height_Window/2 - r, 0, c_Core};
    p_12_Window_R_0s=newp; Point(newp) = {(-central_width_Core_Leg)/2., -height_Window/2 + r, 0, c_Core};
    p_12_Window_R_0c=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r, -height_Window/2 + r, 0, c_Core};
    p_12_Window_R_0e=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r, -height_Window/2, 0, c_Core};
    p_12_Window_L_0s=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, -height_Window/2, 0, c_Core};
    p_12_Window_L_0c=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, -height_Window/2 + r, 0, c_Core};
    p_12_Window_L_0e=newp; Point(newp) = {-width_Core/2.+width_Core_Leg, -height_Window/2 + r, 0, c_Core};
    
    l_Air_12_Window[]={};
    l_Air_12_Window[]+=newl; Circle(newl) = {p_12_Window_L_1s, p_12_Window_L_1c, p_12_Window_L_1e};
    l_Air_12_Window[]+=newl; Line(newl) = {p_12_Window_L_1e, p_12_Window_R_1s};
    l_Air_12_Window[]+=newl; Circle(newl) = {p_12_Window_R_1s, p_12_Window_R_1c, p_12_Window_R_1e};
    l_Air_12_Window[]+=newl; Line(newl) = {p_12_Window_R_1e, p_12_Window_R_0s};
    l_Air_12_Window[]+=newl; Circle(newl) = {p_12_Window_R_0s, p_12_Window_R_0c, p_12_Window_R_0e};
    l_Air_12_Window[]+=newl; Line(newl) = {p_12_Window_R_0e, p_12_Window_L_0s};
    l_Air_12_Window[]+=newl; Circle(newl) = {p_12_Window_L_0s, p_12_Window_L_0c, p_12_Window_L_0e};
    l_Air_12_Window[]+=newl; Line(newl) = {p_12_Window_L_0e, p_12_Window_L_1s};
    
    // AIR_23_WINDOW
    p_23_Window_L_1s=newp; Point(newp) = {(central_width_Core_Leg)/2., height_Window/2 - r, 0, c_Core};
    p_23_Window_L_1c=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, height_Window/2 - r, 0, c_Core};
    p_23_Window_L_1e=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, height_Window/2, 0, c_Core};
    p_23_Window_R_1s=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, height_Window/2, 0, c_Core};
    p_23_Window_R_1c=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, height_Window/2 - r, 0, c_Core};
    p_23_Window_R_1e=newp; Point(newp) = {width_Core/2.-width_Core_Leg, height_Window/2 - r, 0, c_Core};
    p_23_Window_R_0s=newp; Point(newp) = {width_Core/2.-width_Core_Leg, -height_Window/2 + r, 0, c_Core};
    p_23_Window_R_0c=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, -height_Window/2 + r, 0, c_Core};
    p_23_Window_R_0e=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, -height_Window/2, 0, c_Core};
    p_23_Window_L_0s=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, -height_Window/2, 0, c_Core};
    p_23_Window_L_0c=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, -height_Window/2 + r, 0, c_Core};
    p_23_Window_L_0e=newp; Point(newp) = {(central_width_Core_Leg)/2., -height_Window/2 + r, 0, c_Core};
    
    l_Air_23_Window[]={};
    l_Air_23_Window[]+=newl; Circle(newl) = {p_23_Window_L_1s, p_23_Window_L_1c, p_23_Window_L_1e};
    l_Air_23_Window[]+=newl; Line(newl) = {p_23_Window_L_1e, p_23_Window_R_1s};
    l_Air_23_Window[]+=newl; Circle(newl) = {p_23_Window_R_1s, p_23_Window_R_1c, p_23_Window_R_1e};
    l_Air_23_Window[]+=newl; Line(newl) = {p_23_Window_R_1e, p_23_Window_R_0s};
    l_Air_23_Window[]+=newl; Circle(newl) = {p_23_Window_R_0s, p_23_Window_R_0c, p_23_Window_R_0e};
    l_Air_23_Window[]+=newl; Line(newl) = {p_23_Window_R_0e, p_23_Window_L_0s};
    l_Air_23_Window[]+=newl; Circle(newl) = {p_23_Window_L_0s, p_23_Window_L_0c, p_23_Window_L_0e};
    l_Air_23_Window[]+=newl; Line(newl) = {p_23_Window_L_0e, p_23_Window_L_1s};
Else
    p_Leg_1_L_0=newp; Point(newp) = {-width_Core/2., -height_Window/2., 0, c_Base};
    p_Leg_1_R_0s=newp; Point(newp) = {-width_Core/2.+width_Core_Leg-r, -height_Window/2., 0, c_Base};
    p_Leg_1_R_0c=newp; Point(newp) = {-width_Core/2.+width_Core_Leg-r, -height_Window/2.+r, 0, c_Base};
    p_Leg_1_R_0e=newp; Point(newp) = {-width_Core/2.+width_Core_Leg, -height_Window/2.+r, 0, c_Base};
    p_Leg_1_L_1=newp; Point(newp) = {-width_Core/2., height_Core/2., 0, c_Core};
    p_Leg_1_R_1s=newp; Point(newp) = {-width_Core/2.+width_Core_Leg, height_Window/2 - r, 0, c_Core};
    p_Leg_1_R_1c=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, height_Window/2 - r, 0, c_Core};
    p_Leg_1_R_1e=newp; Point(newp) = {-width_Core/2.+width_Core_Leg + r, height_Window/2, 0, c_Core};

    p_Leg_2_L_0s=newp; Point(newp) = {(-central_width_Core_Leg)/2., -height_Window/2.+r, 0, c_Base};
    p_Leg_2_L_0c=newp; Point(newp) = {(-central_width_Core_Leg)/2.+r, -height_Window/2.+r, 0, c_Base};
    p_Leg_2_L_0e=newp; Point(newp) = {(-central_width_Core_Leg)/2.+r, -height_Window/2., 0, c_Base};
    p_Leg_2_R_0s=newp; Point(newp) = {(central_width_Core_Leg)/2.-r, -height_Window/2., 0, c_Base};
    p_Leg_2_R_0c=newp; Point(newp) = {(central_width_Core_Leg)/2.-r, -height_Window/2.+r, 0, c_Base};
    p_Leg_2_R_0e=newp; Point(newp) = {(central_width_Core_Leg)/2., -height_Window/2.+r, 0, c_Base};

    p_Leg_2_L_1s=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r,height_Window/2, 0, c_Core};
    p_Leg_2_L_1c=newp; Point(newp) = {(-central_width_Core_Leg)/2. - r,height_Window/2 - r, 0, c_Core};
    p_Leg_2_L_1e=newp; Point(newp) = {(-central_width_Core_Leg)/2.,height_Window/2 - r, 0, c_Core};
    p_Leg_2_R_1s=newp; Point(newp) = {(central_width_Core_Leg)/2., height_Window/2 - r, 0, c_Core};
    p_Leg_2_R_1c=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, height_Window/2 - r, 0, c_Core};
    p_Leg_2_R_1e=newp; Point(newp) = {(central_width_Core_Leg)/2. + r, height_Window/2, 0, c_Core};

    p_Leg_3_L_0s=newp; Point(newp) = {width_Core/2.-width_Core_Leg, -height_Window/2.+r, 0, c_Base};
    p_Leg_3_L_0c=newp; Point(newp) = {width_Core/2.-width_Core_Leg+r, -height_Window/2.+r, 0, c_Base};
    p_Leg_3_L_0e=newp; Point(newp) = {width_Core/2.-width_Core_Leg+r, -height_Window/2., 0, c_Base};
    p_Leg_3_R_0=newp; Point(newp) = {width_Core/2., -height_Window/2., 0, c_Base};

    p_Leg_3_L_1s=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, height_Window/2, 0, c_Core};
    p_Leg_3_L_1c=newp; Point(newp) = {width_Core/2.-width_Core_Leg - r, height_Window/2 - r, 0, c_Core};
    p_Leg_3_L_1e=newp; Point(newp) = {width_Core/2.-width_Core_Leg, height_Window/2 - r, 0, c_Core};
     
    p_Leg_3_R_1=newp; Point(newp) = {width_Core/2., height_Core/2., 0, c_Core};
    
        
    l_Core_12_In[]={};
    l_Core_12_In[]+=newl; Circle(newl) = {p_Leg_1_R_0s, p_Leg_1_R_0c, p_Leg_1_R_0e};
    l_Core_12_In[]+=newl; Line(newl) = {p_Leg_1_R_0e, p_Leg_1_R_1s};
    l_Core_12_In[]+=newl; Circle(newl) = {p_Leg_1_R_1s, p_Leg_1_R_1c, p_Leg_1_R_1e};
    l_Core_12_In[]+=newl; Line(newl) = {p_Leg_1_R_1e, p_Leg_2_L_1s};
    l_Core_12_In[]+=newl; Circle(newl) = {p_Leg_2_L_1s, p_Leg_2_L_1c, p_Leg_2_L_1e};
    l_Core_12_In[]+=newl; Line(newl) = {p_Leg_2_L_1e, p_Leg_2_L_0s};
    l_Core_12_In[]+=newl; Circle(newl) = {p_Leg_2_L_0s, p_Leg_2_L_0c, p_Leg_2_L_0e};
    
    l_Core_23_In[]={};
    l_Core_23_In[]+=newl; Circle(newl) = {p_Leg_2_R_0s, p_Leg_2_R_0c, p_Leg_2_R_0e};
    l_Core_23_In[]+=newl; Line(newl) = {p_Leg_2_R_0e, p_Leg_2_R_1s};
    l_Core_23_In[]+=newl; Circle(newl) = {p_Leg_2_R_1s, p_Leg_2_R_1c, p_Leg_2_R_1e};
    l_Core_23_In[]+=newl; Line(newl) = {p_Leg_2_R_1e, p_Leg_3_L_1s};
    l_Core_23_In[]+=newl; Circle(newl) = {p_Leg_3_L_1s, p_Leg_3_L_1c, p_Leg_3_L_1e};
    l_Core_23_In[]+=newl; Line(newl) = {p_Leg_3_L_1e, p_Leg_3_L_0s};
    l_Core_23_In[]+=newl; Circle(newl) = {p_Leg_3_L_0s, p_Leg_3_L_0c, p_Leg_3_L_0e};
    
    l_Core_31_Out[]={};
    l_Core_31_Out[]+=newl; Line(newl) = {p_Leg_3_R_0, p_Leg_3_R_1};
    l_Core_31_Out[]+=newl; Line(newl) = {p_Leg_3_R_1, p_Leg_1_L_1};
    l_Core_31_Out[]+=newl; Line(newl) = {p_Leg_1_L_1, p_Leg_1_L_0};
    
    l_Core_Leg_1_Y0[]={};
    l_Core_Leg_1_Y0[]+=newl; Line(newl) = {p_Leg_1_L_0, p_Leg_1_R_0s};

    l_Core_Leg_2_Y0[]={};
    l_Core_Leg_2_Y0[]+=newl; Line(newl) = {p_Leg_2_L_0e, p_Leg_2_R_0s};

    l_Core_Leg_3_Y0[]={};
    l_Core_Leg_3_Y0[]+=newl; Line(newl) = {p_Leg_3_L_0e, p_Leg_3_R_0};
    ll_Core=newll; Curve Loop(newll) = {l_Core_12_In[], l_Core_Leg_2_Y0[], l_Core_23_In[], l_Core_Leg_3_Y0[], l_Core_31_Out[], l_Core_Leg_1_Y0[]};

    // Base
    p_L_0=newp; Point(newp) = {-width_Core/2., -height_Core/2, 0, c_Core};
    x_[] = Point{p_Leg_1_L_0};
    p_Leg_1_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{p_Leg_1_R_0s};
    p_Leg_1_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{p_Leg_2_L_0e};
    p_Leg_2_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{p_Leg_2_R_0s};
    p_Leg_2_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{p_Leg_3_L_0e};
    p_Leg_3_L_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    x_[] = Point{p_Leg_3_R_0};
    p_Leg_3_R_0_B=newp; Point(newp) = {x_[0], x_[1]-gap_Core, 0, c_Base};
    p_R_0=newp; Point(newp) = {width_Core/2., -height_Core/2, 0, c_Core};
    l_Base[]={};
    l_Base[]+=newl; Line(newl) = {p_Leg_1_L_0_B, p_Leg_1_R_0_B};
    l_Base[]+=newl; Line(newl) = {p_Leg_1_R_0_B, p_Leg_2_L_0_B};
    l_Base[]+=newl; Line(newl) = {p_Leg_2_L_0_B, p_Leg_2_R_0_B};
    l_Base[]+=newl; Line(newl) = {p_Leg_2_R_0_B, p_Leg_3_L_0_B};
    l_Base[]+=newl; Line(newl) = {p_Leg_3_L_0_B, p_Leg_3_R_0_B};
    l_Base[]+=newl; Line(newl) = {p_Leg_3_R_0_B, p_R_0};
    l_Base[]+=newl; Line(newl) = {p_R_0, p_L_0};
    l_Base[]+=newl; Line(newl) = {p_L_0, p_Leg_1_L_0_B};

    ll_Base=newll; Curve Loop(newll) = {l_Base[]};
EndIf

// COIL_1_PRIM_PLUS

x_[]=Point{p_Leg_1_R_0};
p_Coil_1_prim_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_1, -height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_1+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_1, height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_1+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_1};

l_Coil_1_prim_p[]={};
l_Coil_1_prim_p[]+=newl; Line(newl) = {p_Coil_1_prim_p_ext_0, p_Coil_1_prim_p_ext_1};
l_Coil_1_prim_p[]+=newl; Line(newl) = {p_Coil_1_prim_p_ext_1, p_Coil_1_prim_p_int_1};
l_Coil_1_prim_p[]+=newl; Line(newl) = {p_Coil_1_prim_p_int_1, p_Coil_1_prim_p_int_0};

l_Coil_1_prim_p_Y0[]={};
l_Coil_1_prim_p_Y0[]+=newl; Line(newl) = {p_Coil_1_prim_p_int_0, p_Coil_1_prim_p_ext_0};

ll_Coil_1_prim_p=newll; Curve Loop(newll) = {l_Coil_1_prim_p[], l_Coil_1_prim_p_Y0[]};
s_Coil_1_prim_p=news; Plane Surface(news) = {ll_Coil_1_prim_p};

Physical Surface("COIL_1_PRIM_PLUS", COIL_1_PRIM_PLUS) = {s_Coil_1_prim_p};

// COIL_1_PRIM_MINUS

x_[]=Point{p_Leg_1_L_0};
p_Coil_1_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_1, -height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_1+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_1, height_Coil_PRIM/2, 0, c_Coil_1};
p_Coil_1_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_1+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_1};

l_Coil_1_prim_m[]={};
l_Coil_1_prim_m[]+=newl; Line(newl) = {p_Coil_1_prim_m_ext_0, p_Coil_1_prim_m_ext_1};
l_Coil_1_prim_m[]+=newl; Line(newl) = {p_Coil_1_prim_m_ext_1, p_Coil_1_prim_m_int_1};
l_Coil_1_prim_m[]+=newl; Line(newl) = {p_Coil_1_prim_m_int_1, p_Coil_1_prim_m_int_0};

l_Coil_1_prim_m_Y0[]={};
l_Coil_1_prim_m_Y0[]+=newl; Line(newl) = {p_Coil_1_prim_m_int_0, p_Coil_1_prim_m_ext_0};

ll_Coil_1_prim_m=newll; Curve Loop(newll) = {l_Coil_1_prim_m[], l_Coil_1_prim_m_Y0[]};
s_Coil_1_prim_m=news; Plane Surface(news) = {ll_Coil_1_prim_m};

Physical Surface("COIL_1_PRIM_MINUS", COIL_1_PRIM_MINUS) = {s_Coil_1_prim_m};

// COIL_1_SECOND_PLUS

x_[]=Point{p_Leg_1_R_0};
x_[0] += gap_Core_Coil_1+width_Coil_PRIM;
p_Coil_1_second_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_1/2, -height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_1/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_1/2, height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_1/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_1};

l_Coil_1_second_p[]={};
l_Coil_1_second_p[]+=newl; Line(newl) = {p_Coil_1_second_p_ext_0, p_Coil_1_second_p_ext_1};
l_Coil_1_second_p[]+=newl; Line(newl) = {p_Coil_1_second_p_ext_1, p_Coil_1_second_p_int_1};
l_Coil_1_second_p[]+=newl; Line(newl) = {p_Coil_1_second_p_int_1, p_Coil_1_second_p_int_0};

l_Coil_1_second_p_Y0[]={};
l_Coil_1_second_p_Y0[]+=newl; Line(newl) = {p_Coil_1_second_p_int_0, p_Coil_1_second_p_ext_0};

ll_Coil_1_second_p=newll; Curve Loop(newll) = {l_Coil_1_second_p[], l_Coil_1_second_p_Y0[]};
s_Coil_1_second_p=news; Plane Surface(news) = {ll_Coil_1_second_p};

Physical Surface("COIL_1_SECOND_PLUS", COIL_1_SECOND_PLUS) = {s_Coil_1_second_p};

// COIL_1_SECOND_MINUS

x_[]=Point{p_Leg_1_L_0};
x_[0] -= gap_Core_Coil_1+width_Coil_PRIM;
p_Coil_1_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_1/2, -height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_1/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_1/2, height_Coil_SECOND/2, 0, c_Coil_1};
p_Coil_1_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_1/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_1};

l_Coil_1_second_m[]={};
l_Coil_1_second_m[]+=newl; Line(newl) = {p_Coil_1_second_m_ext_0, p_Coil_1_second_m_ext_1};
l_Coil_1_second_m[]+=newl; Line(newl) = {p_Coil_1_second_m_ext_1, p_Coil_1_second_m_int_1};
l_Coil_1_second_m[]+=newl; Line(newl) = {p_Coil_1_second_m_int_1, p_Coil_1_second_m_int_0};

l_Coil_1_second_m_Y0[]={};
l_Coil_1_second_m_Y0[]+=newl; Line(newl) = {p_Coil_1_second_m_int_0, p_Coil_1_second_m_ext_0};

ll_Coil_1_second_m=newll; Curve Loop(newll) = {l_Coil_1_second_m[], l_Coil_1_second_m_Y0[]};
s_Coil_1_second_m=news; Plane Surface(news) = {ll_Coil_1_second_m};

Physical Surface("COIL_1_SECOND_MINUS", COIL_1_SECOND_MINUS) = {s_Coil_1_second_m};

// COIL_2_PRIM_PLUS

x_[]=Point{p_Leg_2_R_0};
p_Coil_2_prim_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_2, -height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_2+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_2, height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_2+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_2};

l_Coil_2_prim_p[]={};
l_Coil_2_prim_p[]+=newl; Line(newl) = {p_Coil_2_prim_p_ext_0, p_Coil_2_prim_p_ext_1};
l_Coil_2_prim_p[]+=newl; Line(newl) = {p_Coil_2_prim_p_ext_1, p_Coil_2_prim_p_int_1};
l_Coil_2_prim_p[]+=newl; Line(newl) = {p_Coil_2_prim_p_int_1, p_Coil_2_prim_p_int_0};

l_Coil_2_prim_p_Y0[]={};
l_Coil_2_prim_p_Y0[]+=newl; Line(newl) = {p_Coil_2_prim_p_int_0, p_Coil_2_prim_p_ext_0};

ll_Coil_2_prim_p=newll; Curve Loop(newll) = {l_Coil_2_prim_p[], l_Coil_2_prim_p_Y0[]};
s_Coil_2_prim_p=news; Plane Surface(news) = {ll_Coil_2_prim_p};

Physical Surface("COIL_2_PRIM_PLUS", COIL_2_PRIM_PLUS) = {s_Coil_2_prim_p};

// COIL_2_PRIM_MINUS

x_[]=Point{p_Leg_2_L_0};
p_Coil_2_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_2, -height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_2+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_2, height_Coil_PRIM/2, 0, c_Coil_2};
p_Coil_2_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_2+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_2};

l_Coil_2_prim_m[]={};
l_Coil_2_prim_m[]+=newl; Line(newl) = {p_Coil_2_prim_m_ext_0, p_Coil_2_prim_m_ext_1};
l_Coil_2_prim_m[]+=newl; Line(newl) = {p_Coil_2_prim_m_ext_1, p_Coil_2_prim_m_int_1};
l_Coil_2_prim_m[]+=newl; Line(newl) = {p_Coil_2_prim_m_int_1, p_Coil_2_prim_m_int_0};

l_Coil_2_prim_m_Y0[]={};
l_Coil_2_prim_m_Y0[]+=newl; Line(newl) = {p_Coil_2_prim_m_int_0, p_Coil_2_prim_m_ext_0};

ll_Coil_2_prim_m=newll; Curve Loop(newll) = {l_Coil_2_prim_m[], l_Coil_2_prim_m_Y0[]};
s_Coil_2_prim_m=news; Plane Surface(news) = {ll_Coil_2_prim_m};

Physical Surface("COIL_2_PRIM_MINUS", COIL_2_PRIM_MINUS) = {s_Coil_2_prim_m};

// COIL_2_SECOND_PLUS

x_[]=Point{p_Leg_2_R_0};
x_[0] += gap_Core_Coil_2+width_Coil_PRIM;
p_Coil_2_second_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_2/2, -height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_2/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_2/2, height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_2/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_2};

l_Coil_2_second_p[]={};
l_Coil_2_second_p[]+=newl; Line(newl) = {p_Coil_2_second_p_ext_0, p_Coil_2_second_p_ext_1};
l_Coil_2_second_p[]+=newl; Line(newl) = {p_Coil_2_second_p_ext_1, p_Coil_2_second_p_int_1};
l_Coil_2_second_p[]+=newl; Line(newl) = {p_Coil_2_second_p_int_1, p_Coil_2_second_p_int_0};

l_Coil_2_second_p_Y0[]={};
l_Coil_2_second_p_Y0[]+=newl; Line(newl) = {p_Coil_2_second_p_int_0, p_Coil_2_second_p_ext_0};

ll_Coil_2_second_p=newll; Curve Loop(newll) = {l_Coil_2_second_p[], l_Coil_2_second_p_Y0[]};
s_Coil_2_second_p=news; Plane Surface(news) = {ll_Coil_2_second_p};

Physical Surface("COIL_2_SECOND_PLUS", COIL_2_SECOND_PLUS) = {s_Coil_2_second_p};

// COIL_2_SECOND_MINUS

x_[]=Point{p_Leg_2_L_0};
x_[0] -= gap_Core_Coil_2+width_Coil_PRIM;
p_Coil_2_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_2/2, -height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_2/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_2/2, height_Coil_SECOND/2, 0, c_Coil_2};
p_Coil_2_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_2/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_2};

l_Coil_2_second_m[]={};
l_Coil_2_second_m[]+=newl; Line(newl) = {p_Coil_2_second_m_ext_0, p_Coil_2_second_m_ext_1};
l_Coil_2_second_m[]+=newl; Line(newl) = {p_Coil_2_second_m_ext_1, p_Coil_2_second_m_int_1};
l_Coil_2_second_m[]+=newl; Line(newl) = {p_Coil_2_second_m_int_1, p_Coil_2_second_m_int_0};

l_Coil_2_second_m_Y0[]={};
l_Coil_2_second_m_Y0[]+=newl; Line(newl) = {p_Coil_2_second_m_int_0, p_Coil_2_second_m_ext_0};

ll_Coil_2_second_m=newll; Curve Loop(newll) = {l_Coil_2_second_m[], l_Coil_2_second_m_Y0[]};
s_Coil_2_second_m=news; Plane Surface(news) = {ll_Coil_2_second_m};

Physical Surface("COIL_2_SECOND_MINUS", COIL_2_SECOND_MINUS) = {s_Coil_2_second_m};

// COIL_3_PRIM_PLUS

x_[]=Point{p_Leg_3_R_0};
p_Coil_3_prim_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_3, -height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_3+width_Coil_PRIM, -height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_3, height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_3+width_Coil_PRIM, height_Coil_PRIM/2, 0, c_Coil_3};

l_Coil_3_prim_p[]={};
l_Coil_3_prim_p[]+=newl; Line(newl) = {p_Coil_3_prim_p_ext_0, p_Coil_3_prim_p_ext_1};
l_Coil_3_prim_p[]+=newl; Line(newl) = {p_Coil_3_prim_p_ext_1, p_Coil_3_prim_p_int_1};
l_Coil_3_prim_p[]+=newl; Line(newl) = {p_Coil_3_prim_p_int_1, p_Coil_3_prim_p_int_0};

l_Coil_3_prim_p_Y0[]={};
l_Coil_3_prim_p_Y0[]+=newl; Line(newl) = {p_Coil_3_prim_p_int_0, p_Coil_3_prim_p_ext_0};

ll_Coil_3_prim_p=newll; Curve Loop(newll) = {l_Coil_3_prim_p[], l_Coil_3_prim_p_Y0[]};
s_Coil_3_prim_p=news; Plane Surface(news) = {ll_Coil_3_prim_p};

Physical Surface("COIL_3_PRIM_PLUS", COIL_3_PRIM_PLUS) = {s_Coil_3_prim_p};


// COIL_3_PRIM_MINUS

x_[]=Point{p_Leg_3_L_0};
p_Coil_3_prim_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_3, -height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_3+width_Coil_PRIM), -height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_3, height_Coil_PRIM/2, 0, c_Coil_3};
p_Coil_3_prim_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_3+width_Coil_PRIM), height_Coil_PRIM/2, 0, c_Coil_3};

l_Coil_3_prim_m[]={};
l_Coil_3_prim_m[]+=newl; Line(newl) = {p_Coil_3_prim_m_ext_0, p_Coil_3_prim_m_ext_1};
l_Coil_3_prim_m[]+=newl; Line(newl) = {p_Coil_3_prim_m_ext_1, p_Coil_3_prim_m_int_1};
l_Coil_3_prim_m[]+=newl; Line(newl) = {p_Coil_3_prim_m_int_1, p_Coil_3_prim_m_int_0};

l_Coil_3_prim_m_Y0[]={};
l_Coil_3_prim_m_Y0[]+=newl; Line(newl) = {p_Coil_3_prim_m_int_0, p_Coil_3_prim_m_ext_0};

ll_Coil_3_prim_m=newll; Curve Loop(newll) = {l_Coil_3_prim_m[], l_Coil_3_prim_m_Y0[]};
s_Coil_3_prim_m=news; Plane Surface(news) = {ll_Coil_3_prim_m};

Physical Surface("COIL_3_PRIM_MINUS", COIL_3_PRIM_MINUS) = {s_Coil_3_prim_m};

// COIL_3_SECOND_PLUS

x_[]=Point{p_Leg_3_R_0};
x_[0] += gap_Core_Coil_3+width_Coil_PRIM;
p_Coil_3_second_p_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_3/2, -height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_p_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_3/2+width_Coil_SECOND, -height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_p_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_3/2, height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_p_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_3/2+width_Coil_SECOND, height_Coil_SECOND/2, 0, c_Coil_3};

l_Coil_3_second_p[]={};
l_Coil_3_second_p[]+=newl; Line(newl) = {p_Coil_3_second_p_ext_0, p_Coil_3_second_p_ext_1};
l_Coil_3_second_p[]+=newl; Line(newl) = {p_Coil_3_second_p_ext_1, p_Coil_3_second_p_int_1};
l_Coil_3_second_p[]+=newl; Line(newl) = {p_Coil_3_second_p_int_1, p_Coil_3_second_p_int_0};

l_Coil_3_second_p_Y0[]={};
l_Coil_3_second_p_Y0[]+=newl; Line(newl) = {p_Coil_3_second_p_int_0, p_Coil_3_second_p_ext_0};

ll_Coil_3_second_p=newll; Curve Loop(newll) = {l_Coil_3_second_p[], l_Coil_3_second_p_Y0[]};
s_Coil_3_second_p=news; Plane Surface(news) = {ll_Coil_3_second_p};

Physical Surface("COIL_3_SECOND_PLUS", COIL_3_SECOND_PLUS) = {s_Coil_3_second_p};

// COIL_3_SECOND_MINUS

x_[]=Point{p_Leg_3_L_0};
x_[0] -= gap_Core_Coil_3+width_Coil_PRIM;
p_Coil_3_second_m_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_3/2, -height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_m_ext_0=newp; Point(newp) = {x_[0]-(gap_Core_Coil_3/2+width_Coil_SECOND), -height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_m_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_3/2, height_Coil_SECOND/2, 0, c_Coil_3};
p_Coil_3_second_m_ext_1=newp; Point(newp) = {x_[0]-(gap_Core_Coil_3/2+width_Coil_SECOND), height_Coil_SECOND/2, 0, c_Coil_3};

l_Coil_3_second_m[]={};
l_Coil_3_second_m[]+=newl; Line(newl) = {p_Coil_3_second_m_ext_0, p_Coil_3_second_m_ext_1};
l_Coil_3_second_m[]+=newl; Line(newl) = {p_Coil_3_second_m_ext_1, p_Coil_3_second_m_int_1};
l_Coil_3_second_m[]+=newl; Line(newl) = {p_Coil_3_second_m_int_1, p_Coil_3_second_m_int_0};

l_Coil_3_second_m_Y0[]={};
l_Coil_3_second_m_Y0[]+=newl; Line(newl) = {p_Coil_3_second_m_int_0, p_Coil_3_second_m_ext_0};

ll_Coil_3_second_m=newll; Curve Loop(newll) = {l_Coil_3_second_m[], l_Coil_3_second_m_Y0[]};
s_Coil_3_second_m=news; Plane Surface(news) = {ll_Coil_3_second_m};

Physical Surface("COIL_3_SECOND_MINUS", COIL_3_SECOND_MINUS) = {s_Coil_3_second_m};

// AIR_EXT
x_[]=Point{p_Leg_3_R_0};
p_Air_Ext_1_R_0=newp; Point(newp) = {x_[0]+gap_Core_Box_X, -gap_Core_Box_Y, 0, c_Box};
p_Air_Ext_1_R_1=newp; Point(newp) = {x_[0]+gap_Core_Box_X, gap_Core_Box_Y, 0, c_Box};

x_[]=Point{p_Leg_1_L_0};
p_Air_Ext_1_L_0=newp; Point(newp) = {x_[0]-gap_Core_Box_X, -gap_Core_Box_Y, 0, c_Box};
p_Air_Ext_1_L_1=newp; Point(newp) = {x_[0]-gap_Core_Box_X, gap_Core_Box_Y, 0, c_Box};

l_Air_Ext[]={};
l_Air_Ext[]+=newl; Line(newl) = {p_Air_Ext_1_R_0, p_Air_Ext_1_R_1};
l_Air_Ext[]+=newl; Line(newl) = {p_Air_Ext_1_R_1, p_Air_Ext_1_L_1};
l_Air_Ext[]+=newl; Line(newl) = {p_Air_Ext_1_L_1, p_Air_Ext_1_L_0};
l_Air_Ext[]+=newl; Line(newl) = {p_Air_Ext_1_L_0, p_Air_Ext_1_R_0};

ll_Air_Ext=newll; Curve Loop(newll) = {l_Air_Ext[]};
If (gap_Core==0)
    // Air 12 Window
    ll_Air_12_Window=newll; Curve Loop(newll) = {l_Air_12_Window[]};
    s_Air_12_Window=news; Plane Surface(news) = {ll_Air_12_Window, ll_Coil_1_prim_p, ll_Coil_1_second_p, ll_Coil_2_prim_m, ll_Coil_2_second_m};

    // Air 23 Window
    ll_Air_23_Window=newll; Curve Loop(newll) = {l_Air_23_Window[]};
    s_Air_23_Window=news; Plane Surface(news) = {ll_Air_23_Window, ll_Coil_2_prim_p, ll_Coil_2_second_p, ll_Coil_3_prim_m, ll_Coil_3_second_m};

    s_Core=news; Plane Surface(news) = {ll_Env, ll_Air_12_Window, ll_Air_23_Window};
    Physical Surface("CORE", CORE) = {s_Core}; 
    Physical Surface("CORE_BASE", CORE_BASE) = {};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext, ll_Env
        ,ll_Coil_1_second_m,ll_Coil_1_prim_m,ll_Coil_3_second_p,ll_Coil_3_prim_p};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext, s_Air_12_Window, s_Air_23_Window};
Else
    s_Core=news; Plane Surface(news) = {ll_Core};
    Physical Surface("CORE", CORE) = {s_Core}; 
    base_Core=news; Plane Surface(news) = {ll_Base};
    Physical Surface("CORE_BASE", CORE_BASE) = {base_Core};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext,ll_Base, ll_Core
        ,ll_Coil_1_second_m,ll_Coil_1_second_p,ll_Coil_1_prim_m,ll_Coil_1_prim_p
        ,ll_Coil_2_second_m,ll_Coil_2_second_p,ll_Coil_2_prim_m,ll_Coil_2_prim_p
        ,ll_Coil_3_second_m,ll_Coil_3_second_p,ll_Coil_3_prim_m,ll_Coil_3_prim_p};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext};
    Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext[]}; 
EndIf
