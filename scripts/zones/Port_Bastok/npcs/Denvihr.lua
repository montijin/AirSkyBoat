-----------------------------------
-- Area: Port Bastok
--  NPC: Denvihr
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Port_Bastok/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        699, 5688, 1,    -- Oak Log
        644, 1800, 1,    -- Mythril Ore
        835,  225, 1,    -- Flax Flower
        698,   86, 2,    -- Ash Log
        694, 2543, 2,    -- Chestnut Log
        643,  810, 2,    -- Iron Ore
        833,   18, 2,    -- Moko Grass
        4570,  50, 2,    -- Bird Egg
        640,   10, 3,    -- Copper Ore
        136, 1800, 3,    -- Kaiserin Cosmetics
    }

    player:showText(npc, ID.text.DENVIHR_SHOP_DIALOG)
    if player:getLocalVar('[AIRSHIP]Paid') == 1 then
        xi.shop.nation(player, stock, xi.nation.BASTOK)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
