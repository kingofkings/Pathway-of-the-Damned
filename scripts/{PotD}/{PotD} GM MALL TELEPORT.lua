
local function GMmall_OnSpawn(pUnit)
	pUnit:PhaseSet(4294967295);
end

local function GMmallMenu(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(3544, pPlayer, 0);
--		pUnit:GossipMenuAddItem(4, "Click here if stormwind did not render.", 1, 0);
		pUnit:GossipMenuAddItem(4, "Click here if NPCs fell through but stormwind did render", 5, 0);
		pUnit:GossipMenuAddItem(4, "Mall Teleports", 2, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function GMmall_OnSelect(pUnit, event, pPlayer, id, intid, code)
	-- if (intid == 1) then
		-- pPlayer:PhaseSet(1);
		-- pPlayer:PhaseSet(2);
		-- pPlayer:Teleport(1, 16118, 16100, 6);
		-- pPlayer:GossipComplete();
	-- end

	if (intid == 5) then
		pPlayer:PhaseSet(1);
		pUnit:SendChatMessage(16, 0, "You will have to relog or teleport to another map and come back if NPCs did not reappear.");
		pPlayer:PhaseSet(4294967295);
		pPlayer:GossipComplete();
	end

	if intid == 2 then
		pUnit:GossipCreateMenu(3544, pPlayer, 0);
		pUnit:GossipMenuAddItem(4, "GM Scripts and Misc Gear", 3, 0);
		pUnit:GossipMenuAddItem(4, "Patch 3.2+ items", 4, 0);
		pUnit:GossipMenuAddItem(4, "PVP Items", 6, 0);
		pUnit:GossipMenuAddItem(4, "Wrath armor + crafting mats", 7, 0);
		pUnit:GossipSendMenu(pPlayer);
	end

	if (intid == 3) then
		pPlayer:Teleport(1, 16010, 15957, 1);
		pPlayer:GossipComplete();
	end

	if (intid == 4) then
		pPlayer:Teleport(1, 16069, 15747, 6);
		pPlayer:GossipComplete();
	end

	if (intid == 6) then
		pPlayer:Teleport(1, 15900, 16142, 10);
		pPlayer:GossipComplete();
	end

	if (intid == 7) then
		pPlayer:Teleport(1, 15753, 16120, 10);
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(5005901, 1, GMmallMenu);
RegisterUnitGossipEvent(5005901, 2, GMmall_OnSelect);
RegisterUnitEvent(5005901, 3, GMmall_OnSpawn);
