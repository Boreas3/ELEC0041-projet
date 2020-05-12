
Include "transfo_common.pro";

Solver.AutoShowLastStep = 0; // don't automatically show the last time step
Include "transfo_core.geo";

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
    ll_12_Window=newll; Curve Loop(newll) = {l_12_Window[]};
    s_12_Window=news; Plane Surface(news) = {ll_12_Window, ll_Coil_A_prim_p, ll_Coil_A_second_p, ll_Coil_B_prim_m, ll_Coil_B_second_m};

    // Air 23 Window
    ll_23_Window=newll; Curve Loop(newll) = {l_23_Window[]};
    s_23_Window=news; Plane Surface(news) = {ll_23_Window, ll_Coil_B_prim_p, ll_Coil_B_second_p, ll_Coil_C_prim_m, ll_Coil_C_second_m};

    s_Core=news; Plane Surface(news) = {ll_Core_Env, ll_12_Window, ll_23_Window};
    Physical Surface("CORE", CORE) = {s_Core}; 
    Physical Surface("CORE_BASE", CORE_BASE) = {};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext, ll_Core_Env
        ,ll_Coil_A_prim_m,ll_Coil_A_second_m,ll_Coil_C_prim_p,ll_Coil_C_second_p};
    s_Air_Ext_inf=news; Plane Surface(news) = {ll_Air_Ext_inf,ll_Air_Ext};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext, s_12_Window, s_23_Window};
    Physical Surface("AIR_INF", AIR_INF) = {s_Air_Ext_inf};
    Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext_inf[]}; 
Else
    s_Core=news; Plane Surface(news) = {ll_Core};
    Physical Surface("CORE", CORE) = {s_Core}; 
    base_Core_A=news; Plane Surface(news) = {ll_Base};
    Physical Surface("CORE_BASE", CORE_BASE) = {base_Core};
    s_Air_Ext=news; Plane Surface(news) = {ll_Air_Ext, ll_Base, ll_Core
        ,ll_Coil_A_second_m,ll_Coil_A_second_p,ll_Coil_A_prim_m,ll_Coil_A_prim_p
        ,ll_Coil_B_second_m,ll_Coil_B_second_p,ll_Coil_B_prim_m,ll_Coil_B_prim_p
        ,ll_Coil_C_second_m,ll_Coil_C_second_p,ll_Coil_C_prim_m,ll_Coil_C_prim_p};
    s_Air_Ext_inf=news; Plane Surface(news) = {ll_Air_Ext_inf,ll_Air_Ext};
    Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext};
    Physical Surface("AIR_INF", AIR_INF) = {s_Air_Ext_inf};
    Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext_inf[]}; 
EndIf
