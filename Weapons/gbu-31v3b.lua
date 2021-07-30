local function KAB(main, fm, autopilot, tgdata)
	local t = main
	
	t.category  = CAT_BOMBS
	t.wsTypeOfWeapon = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Guided, WSTYPE_PLACEHOLDER}
    t.hMin    = 1000.0
    t.VyHold  = -80.0
    t.Ag      = -1.0
	
	t.fm				= fm
	
	t.fm.mass			= t.mass
	t.fm.wind_time		= 1000.000000
	t.fm.wind_sigma		= 0
	t.fm.A				= 0.6
	t.fm.maxAoa			= math.rad(7)
	t.fm.finsTau		= 0.1
	t.fm.dCydA			= {0.066, 0.036}
	
	t.bang_bang_autopilot = autopilot
	t.targeting_data = tgdata

	t.shape_table_data ={
		{
			name     = t.name,
			file     = t.model,
			life     = 1,
			fire     = {0, 1},
			username = t.user_name,
			index    = WSTYPE_PLACEHOLDER,
		},
	}
	
	declare_weapon(t)
	return t
end




local f117_gbu_31_blu109 =
{
	category		= CAT_BOMBS,
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Guided, WSTYPE_PLACEHOLDER},
	type			= 4,
	mass			= 970.0,
	hMin			= 400.0,
	hMax			= 15000.0,
	Cx				= 0.00264,
	VyHold			= -100.0,
	Ag				= -1.23,
	
	name			= "f117_gbu_31_blu109",
	model			= "GBU31_V_3B_BLU109",
	user_name		= _("GBU-31(V)3/B Optically-Designated JDAM with BLU-109 Penetrator"),
	scheme			= "bomb_jdam",
	class_name		= "wAmmunitionChangeableTrajectory",
	
	warhead = {
			caliber = 368,
			concrete_factors = { 5, 1, 10 },
			concrete_obj_factor = 5,
			cumulative_factor = 0,
			cumulative_thickness = 0,
			expl_mass = 349.6,
			fantom = 0,
			mass = 349.6,
			obj_factors = { 1, 1 },
			other_factors = { 1, 1, 1 },
			piercing_mass = 69.92
		},
 		
	fm =
    {
		mass			= 970.0,
		caliber			= 0.368,
		cx_coeff		= {1, 0.45, 0.8, 0.15, 1.55},
		L				= 0.368,
		I				= 592.5,
		I_x				= 32.5,
		wind_time		= 0.0,
		wind_sigma		= 0.0,
		dCydA			= {0.066, 0.036},
		A				= 0.6,
		maxAoa			= math.rad(25),
		finsTau			= 0.1,
		fins_gain		= 100,
		ideal_fins 		= 1,
		finsTau			= 0.1,
		Sw				= 0.1*5,
		Ma				= 6.3,
		Mw				= 3.0,
		Ma_x			= 1.5,
		Mw_x			= 6.5,
		model_roll 		= math.rad(-45),
    },
	
	seeker = {
		CEP 					= 5.0,
		coalition				= 2,
		coalition_rnd_coeff		= 5.0,
	},
	
	autopilot = {
		delay				= 1.0,
		op_time				= 9000,
		Tf					= 0.05,
		Knav				= 3.0,
		Kd					= 890.0,
		Ka					= 12.0,
		Tc					= 0.1,
		Kx					= 0.4,
		Krx					= 4.0,
		gload_limit			= 3.0,
		fins_limit			= math.rad(35),
		fins_limit_x		= math.rad(5),
		null_roll			= math.rad(-45),
		KD0					= 0.1 / 970,
		KDI					= 0.6 * 970 / 0.5,
		KLM					= 1.3 * 0.1 * 5 / 970,
	},
	
	shape_table_data =
	{
		{
			name     = "f117_gbu_31_blu109",
			file     = "GBU31_V_3B_BLU109",
			life     = 1,
			fire     = {0, 1},
			username = _("GBU31P"),
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	
	targeting_data = 
	{
		char_time				= 20.5, --20.25
	}
}

declare_weapon(f117_gbu_31_blu109)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "F117_GBU31_BLU_109",
	attribute		= f117_gbu_31_blu109.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= f117_gbu_31_blu109.Cx,
	Picture			= "gbu31.png",
	displayName		= f117_gbu_31_blu109.user_name,
	Weight			= f117_gbu_31_blu109.mass,
	Elements  		= {{ShapeName = "GBU31_V_3B_BLU109"}},
})
