-- Migrated from custom/monitors.conf
-- Edit this file; nwg-displays updates should be copied here manually.

-- Left external monitor
hl.monitor({
    output = "desc:LG Electronics LG ULTRAGEAR 206MAEG84N00",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1,
})

-- Main (center) monitor
hl.monitor({
    output = "desc:LG Electronics LG ULTRAGEAR 0x00095E49",
    mode = "2560x1080@144",
    position = "1920x0",
    scale = 1,
})

-- Laptop screen (right)
hl.monitor({
    output = "desc:BOE 0x0CB7",
    mode = "1920x1200@60",
    position = "4480x0",
    scale = 1,
})
