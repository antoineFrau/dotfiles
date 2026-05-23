-- Migrated from custom/execs.conf

hl.on("hyprland.start", function()
    -- Input method
    -- hl.exec_cmd("fcitx5")

    hl.exec_cmd("systemctl --user start orateur.service")
    hl.exec_cmd("zen-browser", { workspace = "1 silent" })
    hl.exec_cmd("cursor ~/Documents/kerno/aicore", { workspace = "2 silent" })
    hl.exec_cmd("slack", { workspace = "11 silent" })
    hl.exec_cmd("spotify", { workspace = "11 silent" })
    hl.exec_cmd("orateur-desktop")
end)
