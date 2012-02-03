-- supposed to be used in azshara crater... but I didnt have any reason to keep developing it, I might revisit this after(if) vehicles are ever finished

local function RE_NPC_main_menu(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(1, "Return me to the world of the living?", 1, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function RE_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:SendChatMessage(16, 0, "The crying banshee sits uptop a troll ruin, weeping to herself she looks up at you staring.");
		pUnit:GossipMenuAddItem(1, "You wave your arm trying to get her attention.", 2, 0);
		pUnit:GossipSendMenu(pPlayer);
	end

	if (intid == 2) then
		pUnit:SendChatMessage(8, 0, "I havent seen anyone... for so long... talk to me again? soon?");
		pPlayer:FullCastSpellOnTarget(50768, player);
		pPlayer:GossipComplete();
	end
end


RegisterUnitGossipEvent(29259, 1, RE_NPC_main_menu);
RegisterUnitGossipEvent(29259, 2, RE_NPC_on_gossip_select);
