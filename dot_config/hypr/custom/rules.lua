-- Migrated from custom/rules.conf
-- Window/layer rules: https://wiki.hyprland.org/Configuring/Window-Rules/
-- Workspace rules: https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- Uncomment to apply global transparency to all windows:
-- hl.window_rule({ match = { class = ".*" }, opacity = { 0.89, 0.89 }, override = { 0.89, 0.89 } })

-- Disable blur for all xwayland apps
-- hl.window_rule({ match = { xwayland = true }, no_blur = true })

hl.window_rule({ match = { title = "^(Orateur)(.*)$" }, float = true })

-- Kern game / Godot windows: pin to DP-10, never steal focus (and so never
-- warp the cursor), so capture runs and playtests stay off the working
-- screens. (added by Claude Code)
hl.window_rule({ match = { class = "^(Kern|Godot.*|kern.*|godot.*)$" }, monitor = "DP-6" })
hl.window_rule({ match = { class = "^(Kern|Godot.*|kern.*|godot.*)$" }, no_initial_focus = true })
