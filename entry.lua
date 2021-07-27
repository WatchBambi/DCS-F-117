self_ID = "F-117"
declare_plugin(self_ID,
{
image     	 = "F-117.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("F-117"),
developerName = _("JInxxDCS"),

fileMenuName = _("F-117"),
update_id        = "F-117",
version		 = "2.7 Build",
state		 = "installed",
info		 = _("F-117, also called Nighthawk, single-seat, twin-engine jet fighter-bomber built by the Lockheed Corporation as a part of the skunk works team(now part of the Lockheed Martin Corporation) for the U.S. Air Force. It was the first stealth aircraft—i.e., an aircraft designed entirely around the concept of evading detection by radar and other sensors."),
binaries	 = { 'F117', },

Skins	=
	{
		{
		    name	= _("F-117"),
			dir		= "Skins/1"
		},
	},
Missions =
	{
		{
			name		    = _("F-117"),
			dir			    = "Missions",
		},
	},
LogBook =
	{
		{
			name		= _("F-117"),
			type		= "F-117",
		},
	},	
		
InputProfiles =
	{
		["F-117"] = current_mod_path .. '/Input/F-117',
	},

})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_model_path	(current_mod_path.."/Cockpit/Resources/Shape")
mount_vfs_texture_path	(current_mod_path.."/Cockpit/Resources/Texture")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path	(current_mod_path.."/Skins/1/ME")--for simulator loading window

dofile(current_mod_path.."/Views.lua")
-------------------------------------------------------------------------------------
make_view_settings('F-117', ViewSettings, SnapViews)
----------------------------------------------------------------------------------------
local cfg_path = current_mod_path .."/FM/config.lua"
dofile(cfg_path)
FM[1] 		= self_ID
FM[2] 		= 'F117'
FM.config_path 	= cfg_path
FM.old 		= 54
-------------------------------------------------------------------------------
make_flyable('F-117',current_mod_path..'/Cockpit/Scripts/', FM, current_mod_path..'/comm.lua')--EFM FC3
------------------------------------------------------------------------------------
dofile(current_mod_path..'/gbu-31.lua')
dofile(current_mod_path..'/gbu-31v3b.lua')
dofile(current_mod_path..'/F-117.lua')
-------------------------------------------------------------------------------------
plugin_done()
