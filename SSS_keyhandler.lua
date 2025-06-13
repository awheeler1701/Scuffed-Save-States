local lovely = require("lovely")
local nativefs = require("nativefs")


local saveKeys = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" }
local saveKeyRaw = { "r" }

-- Scuffed Save States Key Handler
function SSS.key_press_update(key)
	-- Proper save states --
	for i, k in ipairs(saveKeys) do
		--  SaveState
		if key == k and love.keyboard.isDown(SSS.SETTINGS.keybinds.saveState) then
			if G.STAGE == G.STAGES.RUN then
				compress_and_save(G.SETTINGS.profile .. "/" .. "saveState" .. k .. ".jkr", G.ARGS.save_run)
				saveManagerAlert("Saved state to slot [" .. k .. "]")
			end
		end
		--  LoadState
		if key == k and love.keyboard.isDown(SSS.SETTINGS.keybinds.loadState) then
			G:delete_run()
			G.SAVED_GAME = get_compressed(G.SETTINGS.profile .. "/" .. "saveState" .. k .. ".jkr")
			if G.SAVED_GAME ~= nil then
				G.SAVED_GAME = STR_UNPACK(G.SAVED_GAME)
			end
			G:start_run({
				savetext = G.SAVED_GAME,
			})
			saveManagerAlert("Loaded save from slot [" .. k .. "]")
		end
	end
	-- Raw save state --
	for i, k in ipairs(saveKeyRaw) do
		--  SaveState RAW
		if key == k and love.keyboard.isDown(SSS.SETTINGS.keybinds.saveState) then
			if G.STAGE == G.STAGES.RUN then
				save_raw(G.SETTINGS.profile .. "/" .. "saveStateRaw.jkr", G.ARGS.save_run)
				saveManagerAlert("Saved state to saveStateRaw.jkr")
			end
		end
		--  LoadState RAW
		if key == k and love.keyboard.isDown(SSS.SETTINGS.keybinds.loadState) then
			saveManagerAlert("Attempting to load raw save state...")
			G:delete_run()
			G.SAVED_GAME = get_raw(G.SETTINGS.profile .. "/" .. "saveStateRaw.jkr")
			if G.SAVED_GAME ~= nil then
				G.SAVED_GAME = STR_UNPACK(G.SAVED_GAME)
			end
			G:start_run({
				savetext = G.SAVED_GAME,
			})
			saveManagerAlert("Successfully loaded raw save from saveStateRaw.jkr")
		end
	end
end

function get_raw(_file)
	local file_data = love.filesystem.getInfo(_file)
	if file_data ~= nil then
		local file_string = love.filesystem.read(_file)
		if file_string ~= '' then
			return file_string
		end
	end
	-- Return nil if any sanity checks fail
	return nil
end

function save_raw(_file, _data)
	local save_string = type(_data) == 'table' and STR_PACK(_data) or _data
	love.filesystem.write(_file,save_string)
end
