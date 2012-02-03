local function BMASTER_OnGossip(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(700, pPlayer, 0);
	pUnit:GossipMenuAddItem(1, "I wish to queue a battleground.", 1, 0);
	pUnit:GossipMenuAddItem(2, "I wish to queue for a arena.", 2, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function BMASTER_GossipSelect(pUnit, event, pPlayer, id, intid, code)

	if (intid == 1) then
		pUnit:GossipCreateMenu(701, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "Warsong Gulch", 3, 0);
		pUnit:GossipMenuAddItem(5, "Arathi Basin", 4, 0);
		pUnit:GossipMenuAddItem(5, "Eye of the Storm", 5, 0);
		pUnit:GossipMenuAddItem(5, "Alterac Valley", 6, 0);
		pUnit:GossipMenuAddItem(5, "Strand of the Ancients", 7, 0);
		pUnit:GossipMenuAddItem(5, "Isle of Conquest", 8, 0);
		pUnit:GossipSendMenu(pPlayer);
	end

	if (intid == 3) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 10) then
			pPlayer:SendBattlegroundWindow(0, 2);
		else
			pPlayer:SendBroadcastMessage("You are too low a level to enter Warsong Gulch!");
		end
	end

	if (intid == 4) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 21) then
			pPlayer:SendBattlegroundWindow(0, 3);
		else
			pPlayer:SendBroadcastMessage("You are too low a level to enter Arathi Basin!");
		end
	end

	if (intid == 5) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 61) then
			pPlayer:SendBattlegroundWindow(0, 7);
		else
			pPlayer:SendBroadcastMessage("You are too low a level to enter Eye of the Storm!");
		end
	end

	if (intid == 6) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 51) then
			pPlayer:SendBattlegroundWindow(0, 1);
		else
			pPlayer:SendBroadcastMessage("You are too low a level to enter Alterac Valley!");
		end
	end

	if (intid == 7) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 70) then
			pPlayer:SendBattlegroundWindow(0, 9);
		else
			pPlayer:SendBroadcastMessage("You are too low a level to enter Strand of the Ancients!");
		end
	end

	if (intid == 8) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 10) then
			pPlayer:SendBattlegroundWindow(0, 5); -- 2v2 arena window but shows all arenas. :)
		else
			pPlayer:SendBroadcastMessage("You are too low a level to join an arena battle!");
		end
	end

	if (intid == 9) then
		pPlayer:GossipComplete();
		if (pPlayer:GetPlayerLevel() >= 71) then
			pPlayer:SendBattlegroundWindow(0, 12); -- isle of conquest.
		else
			pPlayer:SendBroadcastMessage("You are too low a level to join an isle of conquest.");
		end
	end
end

RegisterUnitGossipEvent(5000002, 1, BMASTER_OnGossip);
RegisterUnitGossipEvent(5000002, 2, BMASTER_GossipSelect);
