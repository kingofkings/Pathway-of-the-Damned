
local function L_NPC_main_menu(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(1, "Level me", 1, 0);
	pUnit:GossipMenuAddItem(0, "Nevermind", 2, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function L_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pUnit:SendChatMessage(8, 0, "Level 80 coming up.");
		pPlayer:SetPlayerLevel(80);
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(5000041, 1, L_NPC_main_menu);
RegisterUnitGossipEvent(5000041, 2, L_NPC_on_gossip_select);

