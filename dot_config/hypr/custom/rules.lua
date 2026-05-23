-- Migrated from custom/rules.conf
-- Window/layer rules: https://wiki.hyprland.org/Configuring/Window-Rules/
-- Workspace rules: https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- Uncomment to apply global transparency to all windows:
-- hl.window_rule({ match = { class = ".*" }, opacity = { 0.89, 0.89 }, override = { 0.89, 0.89 } })

-- Disable blur for all xwayland apps
-- hl.window_rule({ match = { xwayland = true }, no_blur = true })

hl.window_rule({ match = { title = "^(Orateur)(.*)$" }, float = true })
