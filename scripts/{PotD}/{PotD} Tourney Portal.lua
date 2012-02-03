-- needs coordnates to argent tourney

local function TP_On_Gossip(pUnit, event, pPlayer)
	pPlayer:Teleport(1, 16118, 16100, 6);
end

RegisterUnitGossipEvent(50026, 1, TP_On_Gossip);


