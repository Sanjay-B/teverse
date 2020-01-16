local controller = {}

local ui = require("tevgit:workshop/controllers/ui/core/ui.lua")
local shared = require("tevgit:workshop/controllers/shared.lua")

controller.eventHandlers = {}

local modulePrefix = "tevgit:workshop/controllers/ui/components/scriptEditor/"

controller.window = ui.window(shared.workshop.interface, "scriptEditor",
    guiCoord(0, 500, 0, 400),
    guiCorrd(1, -260, 0.5, -25),
    true, -- can be docked
    true -- can be hidden
)

return controller