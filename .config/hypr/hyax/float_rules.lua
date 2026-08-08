-- Float Rules
local floatMatchingTitles = {
    "^Rename",
    "^File Operation Progress",
    "^Open",
    "^Save",
    "^All Files",
}

local floatMatchingClasses = {
    "blueman-manager",
}

for _, title in ipairs(floatMatchingTitles) do
    hl.window_rule({
        name = "float-" .. title,
        match = { title = title },
        float = true,
    })
end

for _, className in ipairs(floatMatchingClasses) do
    hl.window_rule({
        name = "float-" .. className,
        match = { class = className },
        float = true,
    })
end