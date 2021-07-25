-- BEGIN -- this part of the file is not intended for an end-user editing
--[[ --------------------------------------------------------------- ]]--

FM = {
	center_of_mass		= {1.11116 ,  0,  0},--x,y,z first number is forward/aft, second number is up/down, third is left right.
	 moment_of_inertia 	= {38912  ,254758,223845,-705},--Ix,Iy,Iz,Ixy
	suspension 			= {
		 {--Nose wheel
			mass = 100,
			pos   			  = {4.913,	-2.098,	0},
						
			damage_element = 0, 
			self_attitude = true,
			wheel_axle_offset = 0.5,
			yaw_limit = math.rad(60.0),
			damper_coeff = 400.0, 
			allowable_hard_contact_length	= 0.19,				

			amortizer_max_length     = 0.53,
			amortizer_basic_length   = 0.53,
			amortizer_reduce_length  = 0.53, --0.43
			
			amortizer_spring_force_factor   = 990000.0, -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
			amortizer_spring_force_factor_rate  = 1,
			amortizer_static_force     = 47500.0,
			
			amortizer_direct_damper_force_factor = 50000,
			amortizer_back_damper_force_factor  = 60000,

			anti_skid_installed = true,

			wheel_radius      = 0.754,
			wheel_static_friction_factor  = 0.75 ,
			-- wheel_side_friction_factor    = 0.85,--0.85 ,
			wheel_roll_friction_factor    = 0.08 ,
			wheel_glide_friction_factor   = 0.65 ,
			wheel_damage_force_factor     = 450.0,
			  
			wheel_moment_of_inertia   = 0.15, --wheel moi as rotation body

			wheel_brake_moment_max = 50.0, -- maximum value of braking moment  , N*m 
			
			arg_post			  = 0,
			arg_amortizer		  = 1,
			arg_wheel_rotation    = 101,
			arg_wheel_yaw		  = 2,
			collision_shell_name  = "WHEEL_F",
			arg_wheel_damage   = 134,
			},
		{--Left wheel
		mass = 200,
		 -- pos   			  = {-0.656,	-2.378,	2.183},
		pos   			  = {-0.942,	-2.050,	-2.509 },
		damage_element	    = 3,
		wheel_axle_offset 	= 0.38,
		self_attitude	    = false,
		yaw_limit		    = math.rad(0.0),
		damper_coeff	    = 160.0,
		
		amortizer_max_length     = 0.4  , 
		amortizer_basic_length   = 0.4  ,
		amortizer_reduce_length  = 0.4  ,
		
		amortizer_spring_force_factor   = 50000.0, -- 29370398.0 or 10000 -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
		amortizer_spring_force_factor_rate  = 3,
		amortizer_static_force     = 202394.0, 
		amortizer_direct_damper_force_factor = 150000.0,
		amortizer_back_damper_force_factor  = 125000.0,
		
		amortizer_direct_damper_force_factor = 50000,
		amortizer_back_damper_force_factor  = 60000,

		allowable_hard_contact_length			= 0.25,
		anti_skid_installed = true,
		wheel_roll_friction_factor     = 0.20,-- DO NOT activate, already implemented in EFM code
		wheel_damage_speed			   = 180,
		wheel_moment_of_inertia  	   = 0.6, --wheel moi as rotation body
		
		
		wheel_radius      = 0.972,
		wheel_static_friction_factor  = 0.75 ,
		wheel_side_friction_factor    = 1.0,--0.85 ,
		wheel_roll_friction_factor    = 0.1 ,
		wheel_glide_friction_factor   = 0.65 ,
		wheel_damage_force_factor     = 450.0,
		wheel_brake_moment_max 		= 50000.0, -- maximum value of braking moment  , N*m 
		
		arg_post			  = 5,
		arg_amortizer		  = 6,
		arg_wheel_rotation    = 102,
		arg_wheel_yaw		  = -1,
		collision_shell_name  = "WHEEL_L",
		arg_wheel_damage   = 136
	},
		{-- Right wheel
		mass = 200,
		 -- pos   			  = {-0.656,	-2.378,	2.183},
		 pos   			  = {-0.942,	-2.050,	2.509 },
		damage_element	    = 3,
		wheel_axle_offset 	= 0.38,
		self_attitude	    = false,
		yaw_limit		    = math.rad(0.0),
		damper_coeff	    = 160.0,
		
		amortizer_max_length     = 0.4  , 
		amortizer_basic_length   = 0.4  ,
		amortizer_reduce_length  = 0.4  ,
		
		amortizer_spring_force_factor   = 50000.0, -- 29370398.0 or 10000 -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
		amortizer_spring_force_factor_rate  = 3,
		amortizer_static_force     = 202394.0, 
		amortizer_direct_damper_force_factor = 150000.0,
		amortizer_back_damper_force_factor  = 125000.0,
		
		amortizer_direct_damper_force_factor = 50000,
		amortizer_back_damper_force_factor  = 60000,

		allowable_hard_contact_length			= 0.25,
		anti_skid_installed = true,
		wheel_roll_friction_factor     = 0.20,-- DO NOT activate, already implemented in EFM code
		wheel_damage_speed			   = 180,
		wheel_moment_of_inertia  	   = 0.6, --wheel moi as rotation body
		
		
		wheel_radius      = 0.972,
		wheel_static_friction_factor  = 0.75 ,
		wheel_side_friction_factor    = 1.0,--0.85 ,
		wheel_roll_friction_factor    = 0.1 ,
		wheel_glide_friction_factor   = 0.65 ,
		wheel_damage_force_factor     = 450.0,
		wheel_brake_moment_max 		= 50000.0, -- maximum value of braking moment  , N*m 
		
		arg_post			  = 3,
		arg_amortizer		  = 4,
		arg_wheel_rotation    = 103,
		arg_wheel_yaw		  = -1,
		collision_shell_name  = "WHEEL_R",
		arg_wheel_damage   = 136
			},
	}, -- gears
	
disable_built_in_oxygen_system	= true,
--[[ ------------------------------------------------------------- ]]--
-- END -- this part of the file is not intended for an end-user editing

-- view shake amplitude
minor_shake_ampl = 0.1,
major_shake_ampl = 0.35,

-- debug
debugLine = "{M}:%1.3f {IAS}:%4.1f {AoA}:%2.1f {ny}:%2.1f {nx}:%1.2f {AoS}:%2.1f {mass}:%2.1f {Fy}:%2.1f {Fx}:%2.1f {wx}:%.1f {wy}:%.1f {wz}:%.1f {Vy}:%2.1f {dPsi}:%2.1f",
record_enabled = false,
}