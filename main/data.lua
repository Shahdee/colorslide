local M = {}
local json = require('main.json')

-- M.STATE_START = 1
-- M.STATE_GAME = 2
-- M.STATE_GAMEOVER = 3
-- 
-- M.state = M.STATE_START

local savefile_path = sys.get_save_file(string.gsub(sys.get_config('project.title'), '%s+', ''), 'save_file')
local loaded = sys.load(savefile_path)

M.sd = {
	currentLevel = 0,
	completedLevel = loaded.completedLevel or -1,
	maxLevel = 3
}

function M.save()
	if sys.save(savefile_path, M.sd) then
		print('Rita, save successful')
	else
		print('Rita, save failed')
	end
end


return M