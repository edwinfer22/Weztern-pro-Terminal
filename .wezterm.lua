 local wezterm = require 'wezterm'
local config = {}

-- 1. CONFIGURACIÓN VISUAL (ESTILO MATRIX)
 config.font = wezterm.font('Cascadia Code')
 config.font_size = 11.0

 -- Transparencia (0.90 es ideal para que se vea oscuro y serio)
 config.window_background_opacity = 0.90
 config.win32_system_backdrop = 'Acrylic'

 -- CAMBIAMOS EL COLOR AL TEMA "THE MATRIX" (Letras verdes, fondo negro)
 config.color_scheme = 'The Matrix'

 -- Pestañas arriba y con diseño moderno
 config.tab_bar_at_bottom = false
 config.use_fancy_tab_bar = true

 -- Cursor estilo Matrix (Bloque verde que parpadea)
 config.default_cursor_style = 'BlinkingBlock'
 config.cursor_blink_rate = 500

 config.window_padding = { left = 20, right = 20, top = 20, bottom = 20 }

-- 2. PROGRAMA POR DEFECTO
 config.default_prog = { 'pwsh.exe' }

 -- 3. ATAJOS DE TECLADO (Tus atajos Pro)
 config.keys = {
   { key = 'h', mods = 'ALT', action = wezterm.action.SplitHorizontal{ domain = 'CurrentPaneDomain' } },
   { key = 'v', mods = 'ALT', action = wezterm.action.SplitVertical{ domain = 'CurrentPaneDomain' } },
   { key = 'w', mods = 'ALT', action = wezterm.action.CloseCurrentPane{ confirm = true } },
   { key = 'LeftArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Left' },
   { key = 'RightArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Right' },
   { key = 'UpArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Up' },
   { key = 'DownArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Down' },
 }

config.window_background_image = 'C:/Proyectos/terminal/neo.jpg'
config.window_background_image_hsb = { brightness = 0.05, saturation = 1.0 }
config.skip_close_confirmation_for_processes_named = { 'bash', 'sh', 'zsh', 'fish', 'tmux', 'pwsh', 'powershell' }
 
 return config