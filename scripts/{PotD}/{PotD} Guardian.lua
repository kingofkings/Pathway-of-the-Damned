
local function Battleguard(pUnit, event, pPlayer)
	pUnit:RegisterEvent(Lookingforpvpers, 1000, 0);
end

local function Lookingforpvpers(pUnit, event)
	local tbl = pUnit:GetInRangeFriends();
	for k, v in pairs(tbl) do
		if v:IsInCombat() == true and v:IsPlayerAttacking() == true and v:GetDistance(pUnit) <= 1800 then
			pUnit:Kill(v);
			pUnit:Despawn(1, 1);
		end
	end
end

RegisterUnitEvent(50003, 18, Battleguard);
