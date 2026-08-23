-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function ()
    hl.exec_cmd("obsidian")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("noctalia")
end)