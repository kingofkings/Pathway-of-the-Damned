-- See the fall of the Lich King (blizzard) / Witness the final moments of the Lich King (I like my version better)
local function DALARAN_DedicationOfHonor_OnMenu1(pGameObject, event, pPlayer)
	pGameObject:GossipCreateMenu(3702444, pPlayer, 0);
	pGameObject:GossipMenuAddItem(0, "Witness the final moments of the Lich King", 1, 0);
	pGameObject:GossipSendMenu(pPlayer);
end

local function DALARAN_DedicationOfHonor_OnGossipSelect(pUnit, event, pPlayer, id, intid, code)
	if (intid == 1) then
		local Packet = LuaPacket:CreatePacket(0x464, 4); -- fall of the lich king movie
		Packet:WriteULong(16);
		pPlayer:SendPacketToPlayer(Packet);
		pPlayer:GossipComplete();
		end
end

RegisterGOGossipEvent(202443, 1, DALARAN_DedicationOfHonor_OnMenu1);
RegisterGOGossipEvent(202443, 2, DALARAN_DedicationOfHonor_OnGossipSelect);