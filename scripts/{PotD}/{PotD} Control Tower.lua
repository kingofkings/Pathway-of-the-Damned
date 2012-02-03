
local function PR_NPC_On_Gossip(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "Reload Scripts", 23, 0);
		pUnit:GossipMenuAddItem(5, "Reload Configs", 24, 0);
		pUnit:GossipMenuAddItem(5, "Reload Database", 25, 0);
		pUnit:GossipMenuAddItem(5, "Debug", 27, 0);
		pUnit:GossipMenuAddItem(1, "Exit", 3, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function PR_NPC_Gossip_Submenus(pUnit, event, pPlayer, id, intid, code)

	if(intid == 1) then
	ReloadLuaEngine();
	pPlayer:GossipComplete();
end

if(intid == 2) then
Rehash();
pPlayer:GossipComplete();
end

if(intid == 3) then
pPlayer:GossipComplete();
end

if(intid == 4) then
ReloadTable("spell_disable");
pPlayer:GossipComplete();
end

if(intid == 5) then
ReloadTable("vendors");
pPlayer:GossipComplete();
end

if(intid == 6) then
ReloadTable("items");
pPlayer:GossipComplete();
end

if(intid == 7) then
ReloadTable("creature_proto");
pPlayer:GossipComplete();
end

if(intid == 8) then
ReloadTable("creature_names");
pPlayer:GossipComplete();
end

if(intid == 9) then
ReloadTable("gameobject_names");
pPlayer:GossipComplete();
end

if(intid == 10) then
ReloadTable("areatriggers");
pPlayer:GossipComplete();
end

if(intid == 11) then
ReloadTable("Itempages");
pPlayer:GossipComplete();
end

if(intid == 12) then
ReloadTable("Worldstring_Tables");
pPlayer:GossipComplete();
end

if(intid == 13) then
ReloadTable("Worldbroadcast");
pPlayer:GossipComplete();
end

if(intid == 14) then
ReloadTable("Quests");
pPlayer:GossipComplete();
end

if(intid == 15) then
ReloadTable("Npc_Text");
pPlayer:GossipComplete();
end

if(intid == 16) then
ReloadTable("Fishing");
pPlayer:GossipComplete();
end

if(intid == 17) then
ReloadTable("Teleport_Coords");
pPlayer:GossipComplete();
end

if(intid == 18) then
ReloadTable("Graveyards");
pPlayer:GossipComplete();
end

if(intid == 19) then
ReloadTable("Worldmap_Info");
pPlayer:GossipComplete();
end

if(intid == 20) then
ReloadTable("Zoneguards");
pPlayer:GossipComplete();
end

if(intid == 21) then
ReloadTable("pUnit_Display_Sizes");
pPlayer:GossipComplete();
end

if(intid == 22) then
ReloadTable("Command_Overrides");
pPlayer:GossipComplete();
end

if(intid == 23) then
pUnit:GossipCreateMenu(100, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "Lua Scripts", 1, 0);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 24) then
pUnit:GossipCreateMenu(100, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "World Config", 2, 0);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 25) then
pUnit:GossipCreateMenu(100, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "Spell_Disable", 4, 0);
pUnit:GossipMenuAddItem(0, "Vendors", 5, 0);
pUnit:GossipMenuAddItem(0, "Items", 6, 0);
pUnit:GossipMenuAddItem(0, "Creature_Proto", 7, 0);
pUnit:GossipMenuAddItem(0, "Creature_Names", 8, 0);
pUnit:GossipMenuAddItem(0, "Gameobject_Names", 9, 0);
pUnit:GossipMenuAddItem(0, "Areatriggers", 10, 0);
pUnit:GossipMenuAddItem(0, "Itempages", 11, 0);
pUnit:GossipMenuAddItem(0, "Worldstring_Tables", 12, 0);
pUnit:GossipMenuAddItem(0, "Worldbroadcast", 13, 0);
pUnit:GossipMenuAddItem(0, "Quests", 14, 0);
pUnit:GossipMenuAddItem(0, "Npc_Text", 15, 0);
pUnit:GossipMenuAddItem(0, "Fishing", 16, 0);
pUnit:GossipMenuAddItem(0, "Teleport_Coords", 17, 0);
pUnit:GossipMenuAddItem(0, "Graveyards", 18, 0);
pUnit:GossipMenuAddItem(0, "Next page -->", 26, 0);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 26) then
pUnit:GossipCreateMenu(100, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "Worldmap_Info", 19, 0);
pUnit:GossipMenuAddItem(0, "Zoneguards", 20, 0);
pUnit:GossipMenuAddItem(0, "pUnit_Display_Sizes", 21, 0);
pUnit:GossipMenuAddItem(0, "Command_Overrides", 22, 0);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 27) then
pUnit:GossipCreateMenu(44, pPlayer, 0);
pUnit:GossipMenuAddItem(30, "-Text- Announce Chat", 28, 1);
pUnit:GossipMenuAddItem(30, "-Text- Announce Screen", 29, 1);
pUnit:GossipMenuAddItem(0, "-Local- Weather", 30, 0);
pUnit:GossipMenuAddItem(30, "-DispID- Morph Me", 36, 1);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 28) then
SendWorldMessage(code, 2);
pPlayer:GossipComplete();
end

if(intid == 29) then
SendWorldMessage(code, 1);
pPlayer:GossipComplete();
end

if(intid == 30) then
pUnit:GossipCreateMenu(100, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "Snowstorm", 31, 0);
pUnit:GossipMenuAddItem(0, "Sandstorm", 32, 0);
pUnit:GossipMenuAddItem(0, "Rain", 33, 0);
pUnit:GossipMenuAddItem(0, "Fog", 34, 0);
pUnit:GossipMenuAddItem(0, "Exit", 3, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 31) then
pUnit:SetZoneWeather(876, 8, 2.0);
pPlayer:GossipComplete();
end

if(intid == 32) then
pUnit:SetZoneWeather(876, 16, 2.0);
pPlayer:GossipComplete();
end

if(intid == 33) then
pUnit:SetZoneWeather(876, 4, 2.0);
pPlayer:GossipComplete();
end

if(intid == 34) then
pUnit:SetZoneWeather(876, 1, 2.0);
pPlayer:GossipComplete();
end


if(intid == 36) then
local Code1 = code
pPlayer:SetModel(Code1);
pPlayer:GossipComplete();
end
end

RegisterUnitGossipEvent(5000057, 1, PR_NPC_On_Gossip);
RegisterUnitGossipEvent(5000057, 2, PR_NPC_Gossip_Submenus);
