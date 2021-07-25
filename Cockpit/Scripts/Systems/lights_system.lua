dofile(LockOn_Options.script_path.."command_defs.lua")
--dofile(LockOn_Options.script_path.."Systems/electric_system_api.lua")

local update_time_step = 0.05
make_default_activity(update_time_step)

local sensor_data = get_base_data()

local PNL_LIGHT 	= 1
local FLOOD_LGT 	= 1
local LDG_LIGHT 	= 1
local NAV_LIGHT 	= 1
local TAXI_LIGHT 	= 1
local MEME_LIGHT 	= 1
local BCN_LIGHT		= 1
local BCN_LIGHT_ROT = 1

local flood_param	= get_param_handle("FLOOD_LGT")

local light_system = GetSelf()

light_system:listen_command(10001)
light_system:listen_command(10002)
light_system:listen_command(10003)
light_system:listen_command(10004)
light_system:listen_command(10005)
light_system:listen_command(10006)
light_system:listen_command(10007)

function post_initialize()
    sndhost = create_sound_host("CptLgts","3D",0,2.0,0)
    btnpress = sndhost:create_sound("Aircrafts/BAEHawk/Cockpit/Click2")
    local birth = LockOn_Options.init_conditions.birth_place
    if birth=="GROUND_HOT" then
        PNL_LIGHT 		= 1
        FLOOD_LGT 		= 0
        LDG_LIGHT 		= 1
        NAV_LIGHT 		= 1
        TAXI_LIGHT 		= 1
		MEME_LIGHT 		= 0
		BCN_LIGHT		= 1
		BCN_LIGHT_ROT 	= 1
    elseif birth=="AIR_HOT" then
        PNL_LIGHT 		= 1
        FLOOD_LGT 		= 0
        LDG_LIGHT 		= 1
        NAV_LIGHT 		= 1
        TAXI_LIGHT 		= 0
		MEME_LIGHT 		= 0
		BCN_LIGHT		= 1
		BCN_LIGHT_ROT 	= 1
    elseif birth=="GROUND_COLD" then
        PNL_LIGHT 		= 0
        FLOOD_LGT 		= 0
        LDG_LIGHT 		= 0
        NAV_LIGHT 		= 0
        TAXI_LIGHT 		= 0
		MEME_LIGHT 		= 0
		BCN_LIGHT		= 0
		BCN_LIGHT_ROT 	= 0
    end
end

function SetCommand(command,value)
    if command == 10001 then
        btnpress:play_once()
        PNL_LIGHT 		= 1 - PNL_LIGHT
    end

    if command == 10002 then
        btnpress:play_once()
        FLOOD_LGT 		= 1 - FLOOD_LGT
    end

    if command == 10003 then
        btnpress:play_once()
        LDG_LIGHT 		= 1 - LDG_LIGHT
    end

    if command == 10004 then
        btnpress:play_once()
        NAV_LIGHT 		= 1 - NAV_LIGHT
    end

    if command == 10005 then
        btnpress:play_once()
        TAXI_LIGHT 		= 1 - TAXI_LIGHT
    end
	
	if command == 10006 then
        btnpress:play_once()
        MEME_LIGHT 		= 1 - MEME_LIGHT
    end
	
	if command == 10007 then
        btnpress:play_once()
        BCN_LIGHT 		= 1 - BCN_LIGHT
		BCN_LIGHT_ROT 	= 1 - BCN_LIGHT_ROT
    end
end

--Rotation logic
local flashcounter = 0.5
local flashperminute = 85
local anticoll_inc = 1

-- returns linear movement from 0.0 to 1.0 at 85 cycles per minute
function update_anticoll_value()

	if anticoll_inc == 1 then
		flashcounter = flashcounter + (update_time_step*(flashperminute/60) * 0.5)
--	else
--		flashcounter = flashcounter - (update_time_step*(flashperminute/60) * 0.5)
	end

	if flashcounter > 1 or flashcounter < 0.075 then
    anticoll_inc = 1 - anticoll_inc
	end

-- set flashing duty cycle here
	local a,b = math.modf(flashcounter) -- extract the decimal part
	return b
end
--Rotation Logic End

--Flash Logic
local flashcounter_ext = 0
local flashperminute_ext = 200

function update_flashing_ext()
    -- exterior lights flash 80 flashes/minute, on for 0.54 seconds and off for 0.21 seconds.
    flashcounter_ext = flashcounter_ext + (update_time_step*(flashperminute_ext/60))
    if flashcounter_ext > flashperminute_ext then
        flashcounter_ext = 0
    end

    -- set flashing duty cycle here
    local a,b = math.modf(flashcounter_ext) -- extract the decimal part
    if b < (0.02/(0.02+0.54)) then
        return 1
    else
        return 0
    end
end
--Flash Logic end

function update()
    local anticoll 		= update_anticoll_value()
    local flashon_ext 	= update_flashing_ext()
	flood_param:set(FLOOD_LGT)
    set_aircraft_draw_argument_value(190,LDG_LIGHT)
    set_aircraft_draw_argument_value(191,NAV_LIGHT)
    set_aircraft_draw_argument_value(192,TAXI_LIGHT)
	set_aircraft_draw_argument_value(193,BCN_LIGHT)
	set_aircraft_draw_argument_value(194,FLOOD_LGT)
	set_aircraft_draw_argument_value(195,PNL_LIGHT)
	set_aircraft_draw_argument_value(1000,MEME_LIGHT)
	set_aircraft_draw_argument_value(1001,BCN_LIGHT_ROT*anticoll)
end

need_to_be_closed = false