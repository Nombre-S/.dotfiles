local wezterm = require('wezterm')
local color = require('config.color')
local font = require('config.font')
local remaps = require('config.remaps')

local config = {
    hide_tab_bar_if_only_one_tab = true
}

color.setColor(config)
font.setFont(config)
remaps.setRemaps(config)

return config
