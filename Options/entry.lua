local self_ID = "F-117A by Eagle Dynamics"
declare_plugin(self_ID,
{
image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-117A"),

version		 = "1.2.14",
state		 = "installed",
info		 = _("The Lockheed F-117 Nighthawk is a single-seat, twin-engine stealth ground-attack aircraft formerly operated by the United States Air Force developed from the Have Blue technology demonstrator and produced by Lockheed's Skunk Works. It is the first operational aircraft to be designed around stealth technology. The maiden flight of the F-117 happened in 1981 and the aircraft achieved initial operating capability status in October 1983. The Nighthawk spent much of its early service life shrouded in secrecy, until it was acknowledged and unveiled to the world in November 1988."),
binaries	= { 'A10',
               
				},  
InputProfiles =
{
    ["f-117A"] = current_mod_path .. '/Input/F-117',
},


Skins	=
	{
		{
			name	= _("F-117A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		= _("F-117A"),
			dir			= "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F-117A"),
			type		= "F-117A",
		},
	},		

})
----------------------------------------------------------------------------------------
--mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_model_path ("Bazar/World/Shapes")
--mount_vfs_texture_path("Bazar/World/textures")
mount_vfs_texture_path  (current_mod_path ..  "/Cockpit/Textures/A_10C_EDM_TEX.zip")
mount_vfs_model_path    (current_mod_path ..  "/Cockpit/Shape")
dofile(current_mod_path.."/Views.lua")
make_view_settings('A-10C', ViewSettings, SnapViews)

make_flyable('F-117A',current_mod_path..'/Cockpit/Scripts/',{self_ID,'A-10C'},current_mod_path..'/comm.lua')

----------------------------------------------------------------------------------------
plugin_done()