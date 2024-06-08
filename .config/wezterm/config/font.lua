local wezterm = require('wezterm')

local font = {}

function font.setFont(config)
    config.font = wezterm.font_with_fallback {
        {
            family = 'Fira Code',
            weight = 'Medium',
            harfbuzz_features = {
                'cv31',
                'cv30',
                'cv25',
                'cv26',
                'cv32',
                'ss04',
                'ss03',
                'cv18',
                'cv28'
            }
        },
        'Symbols Nerd Font',
        'Symbols Nerd Font Mono'
    }
    config.font_size = 14
end

return font
