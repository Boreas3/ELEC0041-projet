
Include "transfo_common.pro";

Solver.AutoShowLastStep = 0; // don't automatically show the last time step
Include "transfo_coreA.geo";
Include "transfo_coreB.geo";
Include "transfo_coreC.geo";

// AIR_EXT
p_Air_Ext_0=newp; Point(newp) = {0, 0, 0, c_Box};
p_Air_Ext=newp; Point(newp) = {r_int,0 , 0, c_Box};
p_Air_Ext2=newp; Point(newp) = {-r_int,0 , 0, c_Box};
p_Air_Ext_inf=newp; Point(newp) = {r_ext,0 , 0, c_Box};
p_Air_Ext2_inf=newp; Point(newp) = {-r_ext,0 , 0, c_Box};

l_Air_Ext[]={};
l_Air_Ext[]+=newl; Circle(newl) = {p_Air_Ext, p_Air_Ext_0, p_Air_Ext2};
l_Air_Ext[]+=newl; Circle(newl) = {p_Air_Ext2, p_Air_Ext_0, p_Air_Ext};
ll_Air_Ext=newll; Curve Loop(newll) = {l_Air_Ext[]};
l_Air_Ext_inf[]={};
l_Air_Ext_inf[]+=newl; Circle(newl) = {p_Air_Ext_inf, p_Air_Ext_0, p_Air_Ext2_inf};
l_Air_Ext_inf[]+=newl; Circle(newl) = {p_Air_Ext2_inf, p_Air_Ext_0, p_Air_Ext_inf};
ll_Air_Ext_inf=newll; Curve Loop(newll) = {l_Air_Ext_inf[]};
If (gap_Core==0)
    // Air 12 Window
    ll_12_A_Window=newll; Curve Loop(newll) = {l_12_A_Window[]};
    s_12_A_Window=news; Plane Surface(news) = {ll_12_A_Window, ll_Coil_A_prim_p, ll_Coil_A_second_m};

    ll_12_B_Window=newll; Curve Loop(newll) = {l_12_B_Window[]};
    s_12_B_Window=news; Plane Surface(news) = {ll_12_B_Window, ll_Coil_B_prim_p, ll_Coil_B_second_m};

    ll_12_C_Window=newll; Curve Loop(newll) = {l_12_C_Window[]};
    s_12_C_Window=news; Plane Surface(news) = {ll_12_C_Window, ll_Coil_C_prim_p, ll_Coil_C_second_m};

    s_Core_A=news; Plane Surface(news) = {ll_CoreA_Env, ll_12_A_Window};
    s_Core_B=news; Plane Surface(news) = {ll_CoreB_Env, ll_12_B_Window};
    s_Core_C=news; Plane Surface(news) = {ll_CoreC_Env, ll_12_C_Window};
    Physical Surface("CORE", CORE) = {s_Core_A, s_Core_B, s_Core_C}; 
    Physical Surface("CORE_BASE", CORE_BASE) = {};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext, ll_CoreA_Env, ll_CoreB_Env, ll_CoreC_Env
        ,ll_Coil_A_prim_m,ll_Coil_A_second_p
        ,ll_Coil_B_prim_m,ll_Coil_B_second_p
        ,ll_Coil_C_prim_m,ll_Coil_C_second_p};
    s_Air_Ext_inf=news; Plane Surface(news) = {ll_Air_Ext_inf,ll_Air_Ext};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext, s_12_A_Window, s_12_B_Window, s_12_C_Window};
    Physical Surface("AIR_INF", AIR_INF) = {s_Air_Ext_inf};
    Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext_inf[]}; 
Else
    s_Core_A=news; Plane Surface(news) = {ll_CoreA};
    s_Core_B=news; Plane Surface(news) = {ll_CoreB};
    s_Core_C=news; Plane Surface(news) = {ll_CoreC};
    Physical Surface("CORE", CORE) = {s_Core_A, s_Core_B, s_Core_C}; 
    base_Core_A=news; Plane Surface(news) = {ll_A_Base};
    base_Core_B=news; Plane Surface(news) = {ll_B_Base};
    base_Core_C=news; Plane Surface(news) = {ll_C_Base};
    Physical Surface("CORE_BASE", CORE_BASE) = {base_Core_A, base_Core_B, base_Core_C};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext, ll_A_Base, ll_B_Base, ll_C_Base, ll_CoreA, ll_CoreB, ll_CoreC
        ,ll_Coil_A_second_m,ll_Coil_A_second_p,ll_Coil_A_prim_m,ll_Coil_A_prim_p
        ,ll_Coil_B_second_m,ll_Coil_B_second_p,ll_Coil_B_prim_m,ll_Coil_B_prim_p
        ,ll_Coil_C_second_m,ll_Coil_C_second_p,ll_Coil_C_prim_m,ll_Coil_C_prim_p};
    s_Air_Ext_inf=news; Plane Surface(news) = {ll_Air_Ext_inf,ll_Air_Ext};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext};
    Physical Surface("AIR_INF", AIR_INF) = {s_Air_Ext_inf};
    Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext_inf[]}; 
EndIf
