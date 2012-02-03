
local function Musicz_OnSpawn(pUnit)
	pUnit:PlaySoundToSet(10144);
	pUnit:Despawn(9000, 5000);
end

RegisterUnitEvent(50036, 18, Musicz_OnSpawn);

