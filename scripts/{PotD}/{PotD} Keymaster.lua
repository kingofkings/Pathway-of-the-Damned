
local function LO_NPC_OnGossipTalk(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		pUnit:GossipMenuAddItem(5, "Teach me how to unlock everything.", 1, 0);
		pUnit:GossipMenuAddItem(1, "I require lockpicks.", 2, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function LO_NPC_OnGossipSelect(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		pPlayer:LearnSpell(33017);
		pPlayer:LearnSpell(4398);
		pPlayer:GossipComplete();
	end

	if (intid == 2) then
		pPlayer:AddItem(5060, 1);
		pPlayer:GossipComplete();
	end
end

RegisterUnitGossipEvent(5000000, 1, LO_NPC_OnGossipTalk);
RegisterUnitGossipEvent(5000000, 2, LO_NPC_OnGossipSelect);
