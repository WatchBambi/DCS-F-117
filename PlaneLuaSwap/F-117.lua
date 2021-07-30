--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")


F_117 =  {
        
	Name 				=   'F-117',
	DisplayName			= _('F-117'),
	
    HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/Scripts',
	
	Picture 			= "F-117.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "F-117",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'F-117';
			life  	 = 18; -- lifebar
			vis   	 = 3; -- visibility gain.
			desrt    = 'F-117_destr'; -- Name of destroyed object file name
			fire  	 = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'F-117';
			index    =  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "F-117_destr";
			file  = "F-117-destr";
			fire  = { 240, 2};
		},

	},
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	    -- add model draw args for network transmitting to this draw_args table (32 limit)
    net_animation ={
        22, 	-- Refuel Bay
		25,     -- Hook
        35, 	-- Drag Chute
		36,		-- Drag Chute Wind
		190,    -- Taxi Light
		191,    -- Wing lights
		192,    -- Landing Lights
		193,    -- Beacon Light
		900,    -- Bomb bay
		1000, 	-- Meme Light
		1001,   -- Beacon Rotate
    },
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	M_empty						=	13381, --KG
	M_nominal					= 	19391, --KG, calculated as half fuel and combat load of 2x 2000lb bombs.
	M_max						=	23813, --KG
	M_fuel_max					=	8391, --KG
	H_max						=	14000, --Meters
	average_fuel_consumption	=	0.81,
	CAS_min						=	65,
	V_opt						=	275,
	V_take_off					=	85,
	V_land						=	77,
	has_afteburner				=	false,
	has_speedbrake				=	false,
	main_gear_pos 				= 	{-0.942,	-2.050,	2.509},
	radar_can_see_ground		=	false,
	nose_gear_pos 				= 	{4.913,	-2.098,	0},
	AOA_take_off				=	0.14,
	stores_number				=	2,
	bank_angle_max				=	60,
	Ny_min						=	-3,
	Ny_max						=	7.3,
	tand_gear_max				=	0.577,
	V_max_sea_level				=	292,
	V_max_h						=	289,
	tanker_type					=	1,
	wing_area					=	84.8,
	wing_span					=	13.2,
	wing_type					= 	0,
	thrust_sum_max				=	9616,
	thrust_sum_ab				=	9616,
	Vy_max						=	14.3,
	length						=	20.3,
	height						=	3.7846,
	flaps_maneuver				=	1,
	Mach_max					=	0.92,
	range						=	1730,
	RCS							=	0.003,
	Ny_max_e					=	7.3,
	detection_range_max			=	0,
	IR_emission_coeff			=	0.15,
	IR_emission_coeff_ab		=	0,
	engines_count				=	2,
	wing_tip_pos 				= 	{-6.627,-0.265,	6.6}, --For Visual Effects
	nose_gear_wheel_diameter	=	0.754,
	main_gear_wheel_diameter	=	0.972,
	brakeshute_name				=	2,
	is_tanker					=	false,
	air_refuel_receptacle_pos 	= 	{2.400,	1.32,	0.0},
	engines_count				=	2,
	engines_nozzles 			= 
		{
				[1] = 
			{
				pos = 	{-4.604,	0.039,	-1.427},
				elevation	=	0,
				diameter	=	0,
				exhaust_length_ab	=	0,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.604,	0.039,	1.427},
				elevation	=	0,
				diameter	=	0,
				exhaust_length_ab	=	0,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [2]
		}, -- end of engines_nozzles
	crew_size	 = 1,
crew_members = 
    {
        [1] = 
            {
                ejection_seat_name    =    9,
                drop_canopy_name    =    "F-117_canopy",
                pos =  {5.6,    1,    0},
                canopy_pos = {4.5,    1,    0},
                ejection_order         = 1,
                canopy_arg          = 38, 
                can_be_playable     = true,
                ejection_added_speed = {-5,15,0},
                role                  = "pilot",
                role_display_name    = _("Pilot"),
            }, -- end of [1]
            [2] = 
            {
            },-- end of [2]
            
    }, -- end of crew_members

	fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.548,	-0.248,	0},
			[9] = 	{-6.548,	-0.248,	0},
			[10] = 	{0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	
	
	-- Countermeasures
	SingleChargeTotal	 	= 120,
	CMDS_Incrementation 	= 4,
	ChaffDefault 			= 64, 
	ChaffChargeSize 		= 1,
	FlareDefault 			= 64, 
	FlareChargeSize 		= 1,
	CMDS_Edit 				= true,
	chaff_flare_dispenser 	= {
		[1] = 
		{
			dir =  {0, -1, -1},
			pos =  {-3, -1, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, -1, 1},
			pos =  {-3, -1, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	effects_presets = {
		{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/F117OverwingVapor.lua"},
    },

	--sensors
	
	detection_range_max		 = 60,
	radar_can_see_ground 	 = true, -- this should be examined (what is this exactly?)
	CanopyGeometry = {
		azimuth   = {-160.0, 160.0}, -- pilot view horizontal (AI)
		elevation = {-50.0, 90.0} -- pilot view vertical (AI)
	},
	Sensors = {
		OPTIC = "Shkval",
		RWR = "Abstract RWR",
	},
	
	Countermeasures = {
        IRCM = "Sukhogruz"
	},
	
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
	
	
		Pylons =     {
        pylon(1, 0, 0, 0, 0,
            {
			 use_full_connector_position=true,
                connector         = "Pylon1",                
                DisplayName     = "1",
                arg                = 314,
                arg_value        = 1,
            },
            {
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },   --Mk 84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },	--GBU-10
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },   --GBU-12
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },   --GBU-16
                { CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },	--GBU-27
				{ CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}" },   --GBU-28
				{ CLSID = "F117_GBU31" 							   },	--GBU-31 JDAM
				{ CLSID = "F117_GBU31_BLU_109"                     },   --GBU-31 JDAM BLU-109 Penetrator
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },	--HARM
				{ CLSID = "LAU_117_AGM_65L"						   },	--AGM-65L laser guided Maverick
				{ CLSID = "{Mk82AIR}"							   }, 	--Mk-82 w/ drag vanes
				{ CLSID	= "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, 	--Mk 81
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },	--Mk 82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },	--Mk 83
				{ CLSID	= "{ACADB374-6D6C-45A0-BA7C-B22B2E108AE4}" },   --"Mk 20*18"
				{ CLSID = "{95334A8C-6ACB-4CB7-99BC-6D07B1479EDA}" },   --MER*6 Mk-81
				{ CLSID = "{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}" },   --MER-3*3 Mk-81
				{ CLSID = "{585D626E-7F42-4073-AB70-41E728C333E2}" }, 	-- MER*12 Mk-82
				{ CLSID	= "{B84DFE16-6AC7-4854-8F6D-34137892E166}" },   --"51 Mk-82"
				{ CLSID = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}" }, 	-- HSAB*9 Mk-84
				{ CLSID = "{F092B80C-BB54-477E-9408-66DEEF740008}" },   --Mk 84*18
				{ CLSID	= "{D3ABF208-FA56-4D56-BB31-E0D931D57AE3}" },   --"Mk 84*28"
				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   --M-117
				{ CLSID = "{82F90BEC-0E2E-4CE5-A66E-1E4ADA2B5D1E}" },   --MER-3*3 M-117AB
				{ CLSID = "{6CDB6B36-7165-47D0-889F-6625FB333561}" },   --MER*6 M-117AB
				{ CLSID = "{574EDEDF-20DE-4942-B2A2-B2EDFD621562}" },   --MER*12 M-117
				{ CLSID = "{B58F99BA-5480-4572-8602-28B0449F5260}" },   --M-117*27
				{ CLSID	= "{72CAC282-AE18-490B-BD4D-35E7EE969E73}" },   --"M117*51"
				{ CLSID = "{B8C99F40-E486-4040-B547-6639172A5D57}" },   --GBU-27*4
				{ CLSID	= "{D9179118-E42F-47DE-A483-A6C2EA7B4F38}" },   --"FAB-1500*6"
				{ CLSID = "MK_82*28" }, 								-- on CBM
				{ CLSID = "B-1B_Mk-84*8" 				,Type = 8 },	-- on rotary launcher ( 8 sides )
				{ CLSID = "{RN-24}" },
                { CLSID = "{RN-28}" },
				--{ CLSID = "{CBU_103}" },								--CBU-87 with WCMD- Not working yet
				--{ CLSID = "{CBU_87}" },                               --CBU-87- Not working yet
				
            }
        ),
        pylon(2, 0, 0, 0, 0,
            {
			 use_full_connector_position=true,
                connector         = "Pylon2",                
                DisplayName     = "2",
                arg                = 315,
                arg_value        = 1,
            },
            {
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },   --Mk 84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },	--GBU-10
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },   --GBU-12
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },   --GBU-16
                { CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },	--GBU-27
				{ CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}" },   --GBU-28				
				{ CLSID = "F117_GBU31" 							   },	--GBU-31 JDAM
				{ CLSID = "F117_GBU31_BLU_109"                     },   --GBU-31 JDAM BLU-109 Penetrator
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },	--HARM
				{ CLSID = "LAU_117_AGM_65L"						   },	--AGM-65L laser guided Maverick
				{ CLSID = "{Mk82AIR}"							   }, 	--Mk-82 w/ drag vanes
				{ CLSID	= "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, 	--Mk 81
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },	--Mk 82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },	--Mk 83
				{ CLSID	= "{ACADB374-6D6C-45A0-BA7C-B22B2E108AE4}" },   --"Mk 20*18"
				{ CLSID = "{95334A8C-6ACB-4CB7-99BC-6D07B1479EDA}" },   --MER*6 Mk-81
				{ CLSID = "{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}" },   --MER-3*3 Mk-81
				{ CLSID = "{585D626E-7F42-4073-AB70-41E728C333E2}" }, 	-- MER*12 Mk-82
				{ CLSID	= "{B84DFE16-6AC7-4854-8F6D-34137892E166}" },   --"51 Mk-82"
				{ CLSID = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}" }, 	-- HSAB*9 Mk-84
				{ CLSID = "{F092B80C-BB54-477E-9408-66DEEF740008}" },   --Mk 84*18
				{ CLSID	= "{D3ABF208-FA56-4D56-BB31-E0D931D57AE3}" },   --"Mk 84*28"
				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   --M-117
				{ CLSID = "{82F90BEC-0E2E-4CE5-A66E-1E4ADA2B5D1E}" },   --MER-3*3 M-117AB
				{ CLSID = "{6CDB6B36-7165-47D0-889F-6625FB333561}" },   --MER*6 M-117AB
				{ CLSID = "{574EDEDF-20DE-4942-B2A2-B2EDFD621562}" },   --MER*12 M-117
				{ CLSID = "{B58F99BA-5480-4572-8602-28B0449F5260}" },   --M-117*27
				{ CLSID	= "{72CAC282-AE18-490B-BD4D-35E7EE969E73}" },   --"M117*51"
				{ CLSID = "{B8C99F40-E486-4040-B547-6639172A5D57}" },   --GBU-27*4
				{ CLSID	= "{D9179118-E42F-47DE-A483-A6C2EA7B4F38}" },   --"FAB-1500*6"
				{ CLSID = "MK_82*28" }, 								-- on CBM
				{ CLSID = "B-1B_Mk-84*8" 				,Type = 8 },	-- on rotary launcher ( 8 sides )
				{ CLSID = "{RN-24}" },
                { CLSID = "{RN-28}" },
				--{ CLSID = "{CBU_103}" },								--CBU-87 with WCMD- Not working yet
				--{ CLSID = "{CBU_87}" },                               --CBU-87- Not working yet
            }
        ),

         pylon(3, 0, 0, 0, 0,

           {
            },
			{
			    --{ CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}" },        --AN/AAQ-28 LITENING
				--{ CLSID = "{CAAC1CFD-6745-416B-AFA4-CB57414856D0}" },        --Lantirn F-16
				--{ CLSID = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}" },        --Sky-Shadow ECM Pod
				--{ CLSID = "{0519A262-0AB6-11d6-9193-00A0249B6F00}" },        --Tangazh ELINT pod
                --{ CLSID = "{0519A263-0AB6-11d6-9193-00A0249B6F00}" },        --Shpil-2M Laser Intelligence Pod
                { CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}" },        --L-081 Fantasmagoria ELINT pod
				{ CLSID = "{B1EF6B0E-3D91-4047-A7A5-A99E7D8B4A8B}" },		 --Mercury LLTV Pod
				  
			}
           ),
  

 },
	
	Tasks = {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(AFAC),
		aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
    },	
	DefaultTask = aircraft_task(CAP),
	
	SFM_Data = {
	aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	6.6,
			Mzalfadt	=	1,
			kjx	=	2.85,
			kjz	=	0.00125,
			Czbe	=	-0.012,
			cx_gear	=	0.002,
			cx_flap	=	0.04,
			cy_flap	=	0.4,
			cx_brk	=	0.025,
			table_data = 
			{
				[1] = 	{0.0,	0.010,	0.07,	0.23,	0.0001,	0.5,	30,	1.1},
				[2] = 	{0.2,	0.010,	0.07,	0.23,	0.0001,	1.5,	30,	1.1},
				[3] = 	{0.4,	0.010,	0.07,	0.23,	0.0001,	2.5,	30,	1.1},
				[4] = 	{0.6,	0.010,	0.073,	0.23,	0.0001,	3.5,	30,	1.1},
				[5] = 	{0.7,	0.010,	0.076,	0.24,	0.0001,	3.5,	28.7,	1.1},
				[6] = 	{0.8,	0.011,	0.079,	0.25,	0.0001,	3.5,	27.3,	1.1},
				[7] = 	{0.9,	0.024,	0.083,	0.26,	0.0001,	3.5,	26,	1.1},
				[8] = 	{1.0,	0.026,	0.085,	0.26,	0.0001,	3.5,	24.7,	1.1},
				[9] = 	{1.05,	0.028,	0.0855,	0.245,	0.0001,	3.5,	24,	1.06},
				[10] = 	{1.1,	0.03,	0.086,	0.23,	0.0001,	3.15,	18,	1.04},
				[11] = 	{1.2,	0.036,	0.083,	0.27,	0.0001,	2.45,	17,	1.02},
				[12] = 	{1.3,	0.036,	0.077,	0.29,	0.0001,	1.75,	16,	1},
				[13] = 	{1.5,	0.034,	0.062,	0.35,	0.0001,	1.5,	13,	0.9},
				[14] = 	{1.7,	0.033,	0.051,	0.398,	0.0001,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.033,	0.046,	0.422,	0.0001,	0.86,	11.4,	0.64},
				[16] = 	{2.0,	0.032,	0.039,	0.47,	9.99e-006,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.032,	0.034,	0.502,	1e-005,	0.7,	9,	0.4},
				[18] = 	{2.5,	0.03,	0.033,	0.55,	1e-005,	0.7,	9,	0.4},
				[19] = 	{3.0,	0.03,	0.033,	0.63,	1e-005,	0.7,	9,	0.4},
				[20] = 	{3.9,	0.03,	0.033,	0.63,	1e-005,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			typeng	=	0,
			hMaxEng	=	30.0,
			dcx_eng	=	0.0085,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	10000,
			dpdh_f	=	10000,
			table_data = 
			{
				[1] = 	{0.0,	96000,	96000},
				[2] = 	{0.2,	93000,	93000},
				[3] = 	{0.4,	87000,	87000},
				[4] = 	{0.6,	85600,	85600},
				[5] = 	{0.7,	93500,	93500},
				[6] = 	{0.8,	107600,	107600},
				[7] = 	{0.9,	125000,	125000},
				[8] = 	{1.0,	132000,	132000},
				[9] = 	{1.1,	131000,	131000},
				[10] = 	{1.2,	129000,	129000},
			}, -- end of table_data               
		}, -- end of engine
	},
	
    Damage = verbose_to_dmg_properties(
	{
        ["WHEEL_F"]                 = {critical_damage = 3}, -- 83
        ["WHEEL_L"]                 = {critical_damage = 3}, -- 84
        ["WHEEL_R"]                 = {critical_damage = 3}, -- 85
    }),	

}

add_aircraft(F_117)
