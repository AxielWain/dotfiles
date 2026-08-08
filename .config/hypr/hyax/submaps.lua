-----------------
---- SUBMAPS ----
-----------------

-- Apps quick launch
hl.bind(mainMod .. " + G", hl.dsp.submap("quicklaunch"))

hl.define_submap("quicklaunch", function()

    -- Set keybinds
    hl.bind("V", function ()
        hl.dispatch(hl.dsp.exec_cmd("code", { workspace = "2 silent" }))
        hl.dispatch(hl.dsp.focus({ workspace = 2 }))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("4", function ()
        hl.dispatch(hl.dsp.exec_cmd("chromium -incognito", { workspace = "4 silent"}))
        hl.dispatch(hl.dsp.focus({ workspace = 4 }))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    -- Use `reset` to go back to the global submap
    hl.bind("Escape", hl.dsp.submap("reset"))
    hl.bind("Return", hl.dsp.submap("reset"))
end)

-- Power Controls
hl.bind(mainMod .. " + P", hl.dsp.submap("powercontrol"))

hl.define_submap("powercontrol", function()

    -- Set keybinds
    hl.bind("R", function ()
        hl.dispatch(hl.dsp.exec_cmd("reboot"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("P", function ()
        hl.dispatch(hl.dsp.exec_cmd("poweroff"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("O", function ()
        hl.dispatch(hl.dsp.exec_cmd("nwg-bar"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    -- Use `reset` to go back to the global submap
    hl.bind("Escape", hl.dsp.submap("reset"))
    hl.bind("Return", hl.dsp.submap("reset"))
end)