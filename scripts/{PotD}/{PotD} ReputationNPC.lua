count = 0

local function R_NPC_main_menu(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(1, pPlayer, 0);
	pUnit:GossipMenuAddItem(1, "Factions, Maxxed, NOW!", 1, 0);
	pUnit:GossipMenuAddItem(0, "Nevermind", 2, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function R_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)

	if (intid == 1) then repeat
		n = n or 1
		count = count + n
		pPlayer:SetStanding(count, 5000000);
		until count > 100000
		count = 0
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pPlayer:GossipComplete();
	end
end



RegisterUnitGossipEvent(50004, 1, R_NPC_main_menu);
RegisterUnitGossipEvent(50004, 2, R_NPC_on_gossip_select);
