-- Migrated from custom/general.conf

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 2,
        gaps_workspaces = 25,
        snap = {
            window_gap = 2,
            monitor_gap = 2,
        },
    },
    input = {
        -- us+intl: dead keys — ' ` ^ " then letter (e.g. 'e→é `e→è ^e→ê "e→ë)
        kb_layout = "us",
        kb_variant = "intl",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,

        follow_mouse = 1,
        off_window_axis_events = 2,

        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.7,
        },
    },
})
