---@class PvPLookup
local PvPLookup = select(2, ...)

---@class PvPLookup.Options
PvPLookup.OPTIONS = {}

function PvPLookup.OPTIONS:Init()

    PvPLookup.OPTIONS.optionsPanel = CreateFrame("Frame", "PvPLookupOptionsPanel")
    PvPLookup.OPTIONS.optionsPanel.name = "PvPLookup"

    InterfaceOptions_AddCategory(self.optionsPanel)
end