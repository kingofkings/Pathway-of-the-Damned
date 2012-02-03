local function MaxSkill_OnGossip(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "Get Max Skills!", 1, 0);
	pUnit:GossipMenuAddItem(0, "Nevermind", 2, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function MaxSkill_onselect(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pPlayer:AdvanceSkill (43, 399);
		pPlayer:AdvanceSkill (55, 399);
		pPlayer:AdvanceSkill (44, 399);
		pPlayer:AdvanceSkill (172, 399);
		pPlayer:AdvanceSkill (54, 399);
		pPlayer:AdvanceSkill (160, 399);
		pPlayer:AdvanceSkill (136, 399);
		pPlayer:AdvanceSkill (162, 399);
		pPlayer:AdvanceSkill (176, 399);
		pPlayer:AdvanceSkill (228, 399);
		pPlayer:AdvanceSkill (173, 399);
		pPlayer:AdvanceSkill (46, 399);
		pPlayer:AdvanceSkill (45, 399);
		pPlayer:AdvanceSkill (226, 399);
		pPlayer:AdvanceSkill (473, 399);
		pPlayer:AdvanceSkill (229, 399);
		pPlayer:AdvanceSkill (171, 399);
		pPlayer:AdvanceSkill (755, 399);
		pPlayer:AdvanceSkill (164, 399);
		pPlayer:AdvanceSkill (165, 399);
		pPlayer:AdvanceSkill (333, 399);
		pPlayer:AdvanceSkill (186, 399);
		pPlayer:AdvanceSkill (202, 399);
		pPlayer:AdvanceSkill (773, 399);
		pPlayer:AdvanceSkill (182, 399);
		pPlayer:AdvanceSkill (393, 399);
		pPlayer:AdvanceSkill (197, 399);
		pPlayer:AdvanceSkill (185, 399);
		pPlayer:AdvanceSkill (356, 399);
		pPlayer:AdvanceSkill (129, 399);
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(50001, 1, MaxSkill_OnGossip);
RegisterUnitGossipEvent(50001, 2, MaxSkill_onselect);
