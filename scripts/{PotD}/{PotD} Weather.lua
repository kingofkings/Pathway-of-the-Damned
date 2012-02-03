
local function W_NPC_main_menu(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "Rain", 1, 0);
		pUnit:GossipMenuAddItem(5, "Snow", 2, 0);
		pUnit:GossipMenuAddItem(5, "Heavy rain", 4, 0);
		pUnit:GossipMenuAddItem(5, "Sandstorm", 5, 0);
		pUnit:GossipMenuAddItem(5, "Sunny", 6, 0);
		pUnit:GossipMenuAddItem(5, "Kalimdor Heavy Rain", 7, 0);
		pUnit:GossipMenuAddItem(5, "Kalimdor Sunlight", 8, 0);
		pUnit:GossipMenuAddItem(5, "Eastern Kingdoms Heavy Rain", 9, 0);
		pUnit:GossipMenuAddItem(5, "Eastern Kingdoms Sunlight", 10, 0);
		pUnit:GossipMenuAddItem(2, "Close", 11, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function W_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pPlayer:SetPlayerWeather(2, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pPlayer:SetPlayerWeather(8, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 3) then
		pPlayer:SetPlayerWeather(1, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 4) then
		pPlayer:SetPlayerWeather(4, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 5) then
		pPlayer:SetPlayerWeather(16, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 6) then
		pPlayer:SetPlayerWeather(0, 0);
		pPlayer:GossipComplete();
	end

	if (intid == 7) then
		pUnit:SetZoneWeather(1, 4, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 8) then
		pUnit:SetZoneWeather(1, 0, 0);
		pPlayer:GossipComplete();
	end

	if (intid == 9) then
		pUnit:SetZoneWeather(2, 4, 2.0);
		pPlayer:GossipComplete();
	end

	if (intid == 10) then
		pUnit:SetZoneWeather(2, 0, 0);
		pPlayer:GossipComplete();
	end

	if (intid == 11) then
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(5000055, 1, W_NPC_main_menu);
RegisterUnitGossipEvent(5000055, 2, W_NPC_on_gossip_select);

-- WEATHER_TYPE_NORMAL      = 0, // NORMAL (SUNNY)
-- WEATHER_TYPE_FOG        = 1, // FOG
-- WEATHER_TYPE_RAIN       = 2, // RAIN
-- WEATHER_TYPE_HEAVY_RAIN    = 4, // HEAVY_RAIN
-- WEATHER_TYPE_SNOW       = 8, // SNOW
-- WEATHER_TYPE_SANDSTORM     = 16 // SANDSTORM
-- pUnit:SetZoneWeather(zone_id, type, density);
