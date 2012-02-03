local function M_NPC_main_menu(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "Argent Dawn Music", 1, 0);
	pUnit:GossipMenuAddItem(0, "Death's Ambience", 2, 0);
	pUnit:GossipMenuAddItem(0, "Hyjal Day", 3, 0);
	pUnit:GossipMenuAddItem(0, "Night Elf Music", 4, 0);
	pUnit:GossipMenuAddItem(0, "Epic.", 5, 0);
	pUnit:GossipMenuAddItem(0, "Nevermind", 2, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function M_NPC_on_gossip_Select(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pUnit:PlaySoundToSet(15851);
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pUnit:PlaySoundToSet(8950);
		pPlayer:GossipComplete();
	end

	if (intid == 3) then
		pUnit:PlaySoundToSet(10144);
		pPlayer:GossipComplete();
	end

	if (intid == 4) then
		pUnit:PlaySoundToSet(3900);
		pPlayer:GossipComplete();
	end

	if (intid == 5) then
		pUnit:PlaySoundToSet(12824);
		pPlayer:GossipComplete();
	end

	if (intid == 6) then
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(50035, 1, M_NPC_main_menu);
RegisterUnitGossipEvent(50035, 2, M_NPC_on_gossip_select);
