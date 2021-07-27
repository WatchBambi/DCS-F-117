local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID----------
devices = {}
devices["LIGHTS"]					= counter()
devices["MiscFunc"]					= counter()
devices["HOOK"]						= counter()
