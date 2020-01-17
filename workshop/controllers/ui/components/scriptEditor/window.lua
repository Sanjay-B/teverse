local controller = {}

local ui = require("tevgit:workshop/controllers/ui/core/ui.lua")
local shared = require("tevgit:workshop/controllers/shared.lua")

controller.eventHandlers = {}

-- engine.construct("script", engine.assets.lua.shared) -- create script instance
-- script:editExternal() -- open script instance in text editor

local modulePrefix = "tevgit:workshop/controllers/ui/components/scriptEditor/"

controller.window = ui.window(shared.workshop.interface, "Script Editor",
    guiCoord(0.835, 0, 1, 0),
    guiCoord(0, 0, 0.091, 0),
    false, -- can be docked
    false, -- can be hidden
    false -- can be dragable
)

local container = ui.create("guiFrame", controller.window.content, {
    size = guiCoord(0, 0, 0, -18),
    position = guiCoord(0, 0, 0, 18)
}, "background")

container:mouseLeftPressed(function ()
    print("PRESSED CONTAINER BODY")
end)



return controller