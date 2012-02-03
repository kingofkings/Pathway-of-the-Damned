local function SC_NPC_main_menu(pUnit, event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
--		pUnit:GossipMenuAddItem(0, "Reload External Scripts", 2, 0);
		pUnit:GossipMenuAddItem(0, "Rehash Server Configuration", 3, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		local player_NAME = pPlayer:GetName();
		pUnit:SendChatMessage(1, 0, ""..player_NAME.." accessed GM script without proper authorization.");
		pPlayer:SoftDisconnect();
	end
end

local function SC_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)

	if (intid == 2) then
		Rehash();
		pPlayer:GossipComplete();
	end

	-- if (intid == 3) then
		-- ReloadLuaEngine();
		-- pPlayer:GossipComplete();
	-- end
end

RegisterUnitGossipEvent(5000056, 1, SC_NPC_main_menu);
RegisterUnitGossipEvent(5000056, 2, SC_NPC_on_gossip_select);
