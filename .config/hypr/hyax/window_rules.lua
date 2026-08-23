--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "todolist",
    match = { class = "superProductivity" },

    float = true,
    workspace = "special:todo silent",
})

hl.window_rule({
    name = "notetaking",
    match = { class = "md.obsidian.Obsidian" },

    fullscreen = true,
    workspace = "special:notes silent",
})

hl.window_rule({
    name = "passmanager",
    match = { class = "org.keepassxc.KeePassXC" },

    float = true,
    size = {"(monitor_w*0.25)", "(monitor_h*0.5)"},
})

hl.window_rule({
    name = "calculator",
    match = { class = "class:org.speedcrunch.speedcrunch" },

    float = true,
    size = {"(monitor_w*0.25)", "(monitor_h*0.5)"},
})

hl.window_rule({
    name = "discord",
    match = { class = "discord" },

    maximize = true,
    workspace = "special:discordchat silent",
})