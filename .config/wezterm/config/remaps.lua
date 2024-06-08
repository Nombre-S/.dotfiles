local wezterm = require('wezterm')
local remaps = {}

function remaps.setRemaps(config)
    config.leader = { key = 'Space', mods = 'CMD', timeout_milliseconds = 1000 }
    config.keys = {
        {
            key = '[',
            mods = 'LEADER',
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
        }
    }
end

return remaps
