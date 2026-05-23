-- Migrated from custom/workspaces.conf
-- Binds workspaces 1-15 to monitors (5 per screen).

local main = "desc:LG Electronics LG ULTRAGEAR 0x00095E49"
local left = "desc:LG Electronics LG ULTRAGEAR 206MAEG84N00"
local laptop = "desc:BOE 0x0CB7"

local layouts = {
    { monitor = main,   workspaces = { 1, 2, 3, 4, 5 },   default = 1 },
    { monitor = left,   workspaces = { 6, 7, 8, 9, 10 },  default = 6 },
    { monitor = laptop, workspaces = { 11, 12, 13, 14, 15 }, default = 11 },
}

for _, layout in ipairs(layouts) do
    for _, id in ipairs(layout.workspaces) do
        hl.workspace_rule({
            workspace = tostring(id),
            monitor = layout.monitor,
            default = id == layout.default,
        })
    end
end
