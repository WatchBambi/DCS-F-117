shape_name   	   = "Cockpit_F-117"
is_EDM			   = true
new_model_format   = true
ambient_light    = {255,255,255}
ambient_color_day_texture    = {72, 100, 160}
ambient_color_night_texture  = {40, 60 ,150}
ambient_color_from_devices   = {50, 50, 40}
ambient_color_from_panels	 = {35, 25, 25}

dusk_border					 = 0.4
draw_pilot					 = false

external_model_canopy_arg	 = 38

use_external_views = false

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

local controllers = LoRegisterPanelControls()
local RAD_TO_DEG = 57.2958

CanopyPos							= CreateGauge()
CanopyPos.arg_number				= 181
CanopyPos.input						= {0, 100}
CanopyPos.output					= {0, 100}
CanopyPos.controller				= controllers.base_gauge_CanopyPos

------------------------------------------------------------------------------	Attitude
ADIPitch							= CreateGauge()
ADIPitch.arg_number					= 1004
ADIPitch.input						= {-140	, 140}
ADIPitch.output						= {-100	, 100}
ADIPitch.controller					= controllers.base_gauge_Pitch

FloodLight							= CreateGauge("parameter")
FloodLight.arg_number				= 180
FloodLight.input					= {0, 100}
FloodLight.output					= {0, 100}
FloodLight.parameter_name			= "FLOOD_LGT"

HideStick                       	= CreateGauge("parameter")
HideStick.arg_number            	= 153
HideStick.parameter_name        	= "HIDE_STICK"
HideStick.input                 	= {0.0, 1.0}
HideStick.output                	= {0.0, 1.0}

RadarAlt							= CreateGauge()
RadarAlt.arg_number					= 523
RadarAlt.input						= {0, 30.48	, 60.96	, 91.44	, 121.92	, 182.88	, 243.84	, 304.8	, 609.6	, 914.4	, 1219.2}
RadarAlt.output						= {0, 0.095	, 0.206	, 0.317	, 0.46	, 0.572	, 0.683	, 0.746	, 0.841	, 0.920	, 1}
RadarAlt.controller					= controllers.base_gauge_RadarAltitude

BaroAlt								= CreateGauge("cycled")
BaroAlt.arg_number					= 1005
BaroAlt.cycle_value 				= 304.8
BaroAlt.input						= {0	, 304.8} -- 0 to 1000 FT (or M?)
BaroAlt.output						= {0	, 1}
BaroAlt.controller					= controllers.base_gauge_BarometricAltitude

indispeed							= CreateGauge()
indispeed.arg_number				= 1006
indispeed.input						= {0.0	, 102.889	, 205.778	, 308.667} 
indispeed.output					= {0	, 0.333	, 0.6666	, 1}
indispeed.controller				= controllers.base_gauge_IndicatedAirSpeed

--VertAccel							= CreateGauge()
--VertAccel.arg_number				= 24
--VertAccel.input						= {-3*9.8, -2*9.8, -1*gforce, 0*gforce, 1*gforce, 2*gforce, 3*gforce, 4*gforce, 5*gforce, 6*gforce, 7*gforce, 8*gforce, 8.5*gforce}
--VertAccel.output					= {-0.5, -0.375, -0.250, -0.142, 0, 0.111, 0.26245, 0.381, 0.5152, 0.651, 0.767, 0.937, 1}
--VertAccel.controller				= controllers.base_gauge_VerticalAcceleration

AoAGauge							= CreateGauge()
AoAGauge.arg_number					= 1007
AoAGauge.input						= {-10/RAD_TO_DEG, 0, 10/RAD_TO_DEG, 20/RAD_TO_DEG}
AoAGauge.output						= {-1, 0, 0.5, 1}
AoAGauge.controller					= controllers.base_gauge_AngleOfAttack



need_to_be_closed = false

--[[ available functions 

 --base_gauge_RadarAltitude
 --base_gauge_BarometricAltitude
 --base_gauge_AngleOfAttack
 --base_gauge_AngleOfSlide
 --base_gauge_VerticalVelocity
 --base_gauge_TrueAirSpeed
 --base_gauge_IndicatedAirSpeed
 --base_gauge_MachNumber
 --base_gauge_VerticalAcceleration --Ny
 --base_gauge_HorizontalAcceleration --Nx
 --base_gauge_LateralAcceleration --Nz
 --base_gauge_RateOfRoll
 --base_gauge_RateOfYaw
 --base_gauge_RateOfPitch
 --base_gauge_Roll
 --base_gauge_MagneticHeading
 --base_gauge_Pitch
 --base_gauge_Heading
 --base_gauge_EngineLeftFuelConsumption
 --base_gauge_EngineRightFuelConsumption
 --base_gauge_EngineLeftTemperatureBeforeTurbine
 --base_gauge_EngineRightTemperatureBeforeTurbine
 --base_gauge_EngineLeftRPM
 --base_gauge_EngineRightRPM
 --base_gauge_WOW_RightMainLandingGear
 --base_gauge_WOW_LeftMainLandingGear
 --base_gauge_WOW_NoseLandingGear
 --base_gauge_RightMainLandingGearDown
 --base_gauge_LeftMainLandingGearDown
 --base_gauge_NoseLandingGearDown
 --base_gauge_RightMainLandingGearUp
 --base_gauge_LeftMainLandingGearUp
 --base_gauge_NoseLandingGearUp
 --base_gauge_LandingGearHandlePos
 --base_gauge_StickRollPosition
 --base_gauge_StickPitchPosition
 --base_gauge_RudderPosition
 --base_gauge_ThrottleLeftPosition
 --base_gauge_ThrottleRightPosition
 --base_gauge_HelicopterCollective
 --base_gauge_HelicopterCorrection
 --base_gauge_CanopyPos
 --base_gauge_CanopyState
 --base_gauge_FlapsRetracted
 --base_gauge_SpeedBrakePos
 --base_gauge_FlapsPos
 --base_gauge_TotalFuelWeight

--]]