
local function Kitty_main_menu(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(50099, pPlayer, 0);
	pUnit:GossipSendMenu(pPlayer);
end

RegisterUnitGossipEvent(50099, 1, Kitty_main_menu);
