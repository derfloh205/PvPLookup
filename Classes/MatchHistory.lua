---@class PvPLookup
local PvPLookup = select(2, ...)

---@class PvPLookup.Player
---@field class string
---@field spec string
---@field name string
---@field server string

---@class PvPLookup.Team 
---@field players PvPLookup.Player[]

---@class PvPLookup.MatchHistory
---@overload fun(timestamp:number, map:string, playerTeam: PvPLookup.Team , enemyTeam: PvPLookup.Team , playerMMR: number, enemyMMR: number, duration: number, playerDamage: number, enemyDamage: number, playerHealing: number, enemyHealing: number, rating: number, pvpMode: PvPLookup.Const.PVPModes ,win:boolean): PvPLookup.MatchHistory
PvPLookup.MatchHistory = PvPLookup.Object:extend()

---@param timestamp number
---@param map string
---@param playerTeam PvPLookup.Team
---@param enemyTeam PvPLookup.Team
---@param playerMMR number
---@param enemyMMR number
---@param duration number
---@param playerDamage number
---@param enemyDamage number
---@param playerHealing number
---@param enemyHealing number
---@param rating number
---@param pvpMode PvPLookup.Const.PVPModes
---@param win boolean
function PvPLookup.MatchHistory:new(timestamp, map, playerTeam, enemyTeam, playerMMR, enemyMMR, duration, playerDamage, enemyDamage, playerHealing, enemyHealing, rating, pvpMode, win)
    self.timestamp = timestamp
    self.map = map
    self.playerTeam = playerTeam
    self.enemyTeam = enemyTeam
    self.playerMMR = playerMMR
    self.enemyMMR = enemyMMR
    self.duration = duration
    self.playerDamage = playerDamage
    self.enemyDamage = enemyDamage
    self.playerHealing = playerHealing
    self.enemyHealing = enemyHealing
    self.rating = rating
    self.pvpMode = pvpMode
    self.win = win
end