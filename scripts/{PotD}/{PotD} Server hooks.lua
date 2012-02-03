-- new stuff on bottom

local function GM_OnFirstEnterWorld(event, pPlayer)
	if (pPlayer:IsGm() == true) then
		pPlayer:AddItem(12064, 1); -- GameMaster Robe
		pPlayer:AddItem(2586, 1); -- GameMaster Hood
		pPlayer:AddItem(11508, 1); -- GameMaster Slippers
		pPlayer:AddItem(23162, 1); -- Foror's Crate
		pPlayer:AddItem(23162, 1); -- Foror's Crate
		pPlayer:AddItem(23162, 1); -- Foror's Crate
		pPlayer:AddItem(23162, 1); -- Foror's Crate
	end
end

RegisterServerHook(3, GM_OnFirstEnterWorld);
