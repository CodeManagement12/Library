local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sametexe001/sametlibs/refs/heads/main/nhack/Library.lua"))()

--// Example, do whatever you want with this
_G.Library = Library
getgenv().Library = Library

local Watermark = Library:Watermark({
    Name = "Landryhaxx"
})

Watermark:SetDynamicTextProvider(function(Fps)
    return string.format("Landryhaxx | %dfps | %s", Fps, os.date("%X"))
end)

local KeybindList = Library:KeybindList({
    Name = "Keybinds"
})

local ESPPreview = Library:ESPPreview({
    Name = "ESP Preview"
})

local TargetIndicator = Library:TargetIndicator()

local ChargeShot = Library:ChargeShotWidget({
    Name = "Charge Shot"
})

local Window = Library:Window({
    Title = "Landryhaxx"
})

Library:RegisterSettingsWidget({
    Name = "Watermark",
    Default = true,
    Callback = function(Value)
        Watermark:SetVisibility(Value)
    end
})

Library:RegisterSettingsWidget({
    Name = "Keybind List",
    Default = true,
    Callback = function(Value)
        KeybindList:SetVisibility(Value)
    end
})

Library:RegisterSettingsWidget({
    Name = "ESP Preview",
    Default = false,
    Callback = function(Value)
        ESPPreview:SetVisibility(Value)
    end
})

Library:RegisterSettingsWidget({
    Name = "Target Indicator",
    Default = false,
    Callback = function(Value)
        TargetIndicator:SetVisibility(Value)
    end
})

Library:RegisterSettingsWidget({
    Name = "Charge Shot",
    Default = false,
    Callback = function(Value)
        ChargeShot:SetVisibility(Value)
    end
})

local Page = Window:Page({ Name = "Main" })
local SubPage = Page:SubPage({ Name = "Combat" })

local LeftSection = SubPage:Section({ Name = "Aimbot", Side = 1 })
local RightSection = SubPage:Section({ Name = "Visuals", Side = 2 })

LeftSection:Toggle({
    Name = "Enable Aimbot",
    Flag = "AimbotEnabled",
    Default = false,
    Callback = function(Value)
    end
})

LeftSection:Slider({
    Name = "FOV",
    Flag = "AimbotFOV",
    Default = 90,
    Min = 1,
    Max = 360,
    Decimals = 0,
    Suffix = "",
    Callback = function(Value)
    end
})

RightSection:Toggle({
    Name = "ESP",
    Flag = "ESPEnabled",
    Default = false,
    Callback = function(Value)
    end
})

Library:Notification("Landryhaxx Loaded", 3, Library.Theme["Accent"])

Window:CreateSettingsPage()
