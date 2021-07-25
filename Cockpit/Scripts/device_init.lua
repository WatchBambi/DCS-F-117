dofile(LockOn_Options.script_path.."devices.lua")
--dofile(LockOn_Options.script_path.."materials.lua")

-- Makes the FC3 HUD and CAM work
attributes = {
	"support_for_cws",
}
--

MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}

creators  = {}

creators[devices.LIGHTS]            = {"avLuaDevice"                ,LockOn_Options.script_path.."Systems/lights_system.lua"}
creators[devices.MiscFunc] 			= {"avLuaDevice"				,LockOn_Options.script_path.."Systems/MiscFunc.lua"}

-- Indicators
indicators = {}