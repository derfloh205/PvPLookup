---@class PvPLookup
local PvPLookup = select(2, ...)

local GGUI = PvPLookup.GGUI
local GUTIL = PvPLookup.GUTIL

---@class PvPLookup.History
PvPLookup.HISTORY = {}

---@type PvPLookup.HistoryFrame
PvPLookup.HISTORY.frame = nil


---@return PvPLookup.Const.PVPModes? pvpMode
function PvPLookup.HISTORY:GetSelectedModeFilter()
    local historyFrame = PvPLookup.HISTORY.frame
    if not historyFrame then
        error("PVPLookup Error: HistoryFrame not found")
    end

    return historyFrame.content.matchHistoryTab.content.pvpModeDropdown.selectedValue
end
---@return PvPLookup.Const.DisplayTeams displayTeams
function PvPLookup.HISTORY:GetDisplayTeam()
    local historyFrame = PvPLookup.HISTORY.frame
    if not historyFrame then
        error("PVPLookup Error: HistoryFrame not found")
    end

    return historyFrame.content.matchHistoryTab.content.teamDisplayDropdown.selectedValue
end