dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()

local update_time_step = 0.02  --50 time per second
make_default_activity(update_time_step)

-- Stick
local stick_vis_state = 0   -- 0 = visible, 1 = hidden
local stick_vis_param = get_param_handle("HIDE_STICK")
local optionsData_hidestick =  get_option_value("difficulty.hideStick","local")

if optionsData_hidestick == true then
    stick_vis_state = 1
else
    stick_vis_state = 0
end
--end stick

function SetCommand(command,value)
	if command == Keys.ToggleStick then
        stick_vis_state = 1 - stick_vis_state
	end
end

function update()
    stick_vis_param:set(stick_vis_state)
end