SSS = {}
function initSSS()
	local lovely = require("lovely")
	local nativefs = require("nativefs")
	assert(load(nativefs.read(lovely.mod_dir .. "/Scuffed-Save-States/SSS_UI.lua")))()
	assert(load(nativefs.read(lovely.mod_dir .. "/Scuffed-Save-States/SSS_keyhandler.lua")))()
	if nativefs.getInfo(lovely.mod_dir .. "/Scuffed-Save-States/settings.lua") then
		local settings_file = STR_UNPACK(nativefs.read((lovely.mod_dir .. "/Scuffed-Save-States/settings.lua")))
		if settings_file ~= nil then
			SSS.SETTINGS = settings_file
		end
	end
end
