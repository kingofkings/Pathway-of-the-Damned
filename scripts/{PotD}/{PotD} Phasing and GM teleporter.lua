local function GM_NPC_main_menu(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "Development Teleports", 1, 0);
		pUnit:GossipMenuAddItem(5, "Phases", 2, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function GM_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "GM Island", 3, 0);
		pUnit:GossipMenuAddItem(5, "Island 1", 4, 0);
		pUnit:GossipMenuAddItem(5, "Island 2", 5, 0);
		pUnit:GossipMenuAddItem(5, "Island 3", 6, 0);
		pUnit:GossipMenuAddItem(5, "Designer's Isle", 7, 0);
		pUnit:GossipMenuAddItem(5, "Programmer's Isle", 8, 0);
		--pUnit:GossipMenuAddItem(8, "Thell's Home", 9, 0);
		pUnit:GossipSendMenu(pPlayer);
	end

	if(intid == 3) then --GMISLAND
	pPlayer:Teleport(1, 16139, 16128, 5);
	pPlayer:GossipComplete();
end

if(intid == 4) then --Island 1
pPlayer:Teleport(0, -12359, 3563, 97);
pPlayer:GossipComplete();
end

if(intid == 5) then --Island 2
pPlayer:Teleport(1, 10427.6, -9754.17, 14);
pPlayer:GossipComplete();
end

if(intid == 6) then --Island 3
pPlayer:Teleport(0, -13778.7, 3041.22, 5);
pPlayer:GossipComplete();
end

if(intid == 7) then --Designers Island
pPlayer:Teleport(451, 16495.5, -16062.9, 44);
pPlayer:GossipComplete();
end

if(intid == 8) then --Programmer's Island
pPlayer:Teleport(451, 16304.2, 16318.1, 71);
pPlayer:GossipComplete();
end

-- if(intid == 9) then --Thell's home
-- pPlayer:Teleport(541, 16495, -16062.9, 45);
-- pPlayer:GossipComplete();
-- end

if (intid == 2) then
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(5, "Support Phase", 1000, 0);
	pUnit:GossipMenuAddItem(5, "GM Mall Phase", 1001, 0);
	pUnit:GossipMenuAddItem(5, "Gameobject testing, and house phase", 1002, 0);
	pUnit:GossipMenuAddItem(5, "Relaxing Phase", 1003, 0);
	pUnit:GossipMenuAddItem(5, "Extra Phase 1", 1004, 0);
	pUnit:GossipMenuAddItem(5, "Extra Phase 2", 1005, 0);
	pUnit:GossipMenuAddItem(5, "All Possible Phases", 1006, 0);
	pUnit:GossipSendMenu(pPlayer);
end

if (intid == 1000) then
	pPlayer:PhaseSet(1);
	pPlayer:GossipComplete();
end

if (intid == 1001) then
	pPlayer:PhaseSet(2);
	pPlayer:GossipComplete();
end

if (intid == 1002) then
	pPlayer:PhaseSet(4);
	pPlayer:GossipComplete();
end

if (intid == 1003) then
	pPlayer:PhaseSet(6);
	pPlayer:GossipComplete();
end

if (intid == 1004) then
	pPlayer:PhaseSet(8);
	pPlayer:GossipComplete();
end

if (intid == 1005) then
	pPlayer:PhaseSet(10);
	pPlayer:GossipComplete();
end

if (intid == 1006) then
	pPlayer:PhaseSet(4294967295);
	pPlayer:GossipComplete();
end
end

RegisterUnitGossipEvent(1000009, 1, GM_NPC_main_menu);
RegisterUnitGossipEvent(1000009, 2, GM_NPC_on_gossip_select);
