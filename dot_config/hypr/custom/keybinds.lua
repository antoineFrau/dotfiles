-- Custom keybinds (migrated from custom/keybinds.conf)
-- Also reintegrates bindings from archivecustom/hyprland/keybinds.conf
-- that are missing from hyprland/keybinds.lua

require("hyprland.lib")

-- ##! User
hl.bind("CTRL + SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"),
    { description = "User: Edit shell config" })
hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
    { description = "User: Edit extra keybinds" })

-- ##! Apps
hl.bind("SUPER + F9", hl.dsp.exec_cmd("systemctl --user restart orateur.service"),
    { description = "App: Toggle voice Orateur" })

-- Speech-to-speech voice agent (set HA_MCP_TOKEN in env before use)
-- hl.bind("SHIFT + ALT + Space", hl.dsp.exec_cmd(
--     'HA_MCP_TOKEN=YOUR_TOKEN_HERE ~/.config/hypr/hyprland/scripts/launch_first_available.sh "foot -e bash -c \'cd ~/Documents/speech-to-speech && ./start_s2s.sh; exec bash\'" "kitty -1 -d ~/Documents/speech-to-speech -e bash -c \'./start_s2s.sh; exec bash\'"'),
--     { description = "App: Start speech-to-speech session" })

-- ##! Workspace
-- Super+Control+1..5 on the number row focus workspaces 6..10 in the current group
for i = 6, 10 do
    hl.bind("CTRL + SUPER + " .. (i % 10), function()
        hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
    end, { description = "Workspace: Focus " .. i })
end
for i = 6, 10 do
    local numberkey = { 10, 11, 12, 13, 14 }
    hl.bind("CTRL + SUPER + code:" .. numberkey[i - 5], function()
        hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
    end)
end

-- Move focused window to absolute workspace 1..10 via Super+Shift+number row keycodes
for i = 1, 5 do
    local numberkey = { 10, 11, 12, 13, 14 }
    hl.bind("SUPER + SHIFT + code:" .. numberkey[i], hl.dsp.window.move({ workspace = i, follow = false }))
end
for i = 6, 10 do
    local numberkey = { 10, 11, 12, 13, 14 }
    hl.bind("CTRL + SUPER + SHIFT + code:" .. numberkey[i - 5], hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Resize window with Super+Shift+arrows (overrides default move-window on these keys)
for i = 1, 4 do
    local arrowkey = { "Left", "Right", "Up", "Down" }
    local delta = { { x = -30, y = 0 }, { x = 30, y = 0 }, { x = 0, y = -30 }, { x = 0, y = 30 } }
    hl.bind("SUPER + SHIFT + " .. arrowkey[i], hl.dsp.window.resize({ x = delta[i].x, y = delta[i].y, relative = true }),
        { repeating = true, description = "Window: Resize " .. arrowkey[i] })
end
