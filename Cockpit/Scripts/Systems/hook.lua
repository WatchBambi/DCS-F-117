dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()

local update_time_step = 0.02
make_default_activity(update_time_step)

local sensor_data = get_base_data()

local hook = 0

dev:listen_command(69) -- Hook command

function post_initialize()
    hook = 0
end

function SetCommand(command,value)
    if command == 69 then
        hook = 1 - hook
    end
end

function update()
    set_aircraft_draw_argument_value(25,hook)
end