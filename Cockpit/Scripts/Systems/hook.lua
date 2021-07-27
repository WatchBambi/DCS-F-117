dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()

local update_time_step = 0.02
make_default_activity(update_time_step)

local sensor_data = get_base_data()

local HOOK = get_param_handle("HOOK")

local hook = 0

dev:listen_command(69) -- Hook command

function post_initialize()
    hook = 0
end

function SetCommand(command,value)
    if command == 69 then
        hook = 0.9 - hook
    end
end

function update()
    local HookStatus = HOOK:get()

    if (hook == 0 and HookStatus > 0) then
        HookStatus = HookStatus - 0.01
        set_aircraft_draw_argument_value(25,HookStatus)
        HOOK:set(HookStatus)
    elseif (hook == 0.9 and HookStatus < 0.9) then
        HookStatus = HookStatus + 0.01
        set_aircraft_draw_argument_value(25,HookStatus)
        HOOK:set(HookStatus)
    end
end