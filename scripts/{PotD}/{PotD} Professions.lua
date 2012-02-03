
local function P_NPC_main_menu(pUnit, event, pPlayer)
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(3, "Professions", 813, 0);
	pUnit:GossipMenuAddItem(5, "set my profession skills to 450", 50, 0);
	pUnit:GossipSendMenu(pPlayer);
end

local function P_NPC_on_gossip_select(pUnit, event, pPlayer, id, intid, code)

	if (intid == 5) then
		pUnit:GossipMenuAddItem(3, "Professions", 813, 0);
		pUnit:GossipMenuAddItem(5, "set my profession skills to 450", 50, 0);
		pUnit:GossipSendMenu(pPlayer);
	end


	if(intid == 813) then
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "Alchemy", 400, 0);
	pUnit:GossipMenuAddItem(0, "Blacksmithing", 401, 0);
	pUnit:GossipMenuAddItem(0, "Enchanting", 402, 0);
	pUnit:GossipMenuAddItem(0, "Engineering", 403, 0);
	pUnit:GossipMenuAddItem(0, "Herbalism", 404, 0);
	pUnit:GossipMenuAddItem(0, "Inscription", 405, 0);
	pUnit:GossipMenuAddItem(0, "Jewelcrafting", 406, 0);
	pUnit:GossipMenuAddItem(0, "Leatherworking", 407, 0);
	pUnit:GossipMenuAddItem(0, "Mining", 408, 0);
	pUnit:GossipMenuAddItem(0, "Skinning", 409, 0);
	pUnit:GossipMenuAddItem(0, "Cooking", 410, 0);
	pUnit:GossipMenuAddItem(0, "First Aid", 411, 0);
	pUnit:GossipMenuAddItem(0, "Fishing", 412, 0);
	pUnit:GossipMenuAddItem(0, "Tailoring", 13, 0);
	pUnit:GossipMenuAddItem(0, "Back to main menu", 5, 0);
	pUnit:GossipSendMenu(pPlayer);
end

if(intid == 400) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Alchemy", 415, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Alchemy", 416, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 401) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Blacksmithing", 417, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Blacksmithing", 418, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 402) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "UnlearnGrand Master Enchanting", 419, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Enchanting", 420, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 403) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Engineering", 421, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Engineering", 422, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end


if(intid == 404) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Herbalism", 423, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Herbalism", 424, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 405) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Inscription", 425, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Inscription", 426, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 406) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Jewelcrafting", 427, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Jewelcrafting", 428, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 407) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Leatherworking", 429, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Leatherworking", 430, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 408) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Mining", 431, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Mining", 432, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 409) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Skinning", 433, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Skinning", 434, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 410) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Cooking", 435, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Cooking", 436, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 411) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master First Aid", 437, 0);
pUnit:GossipMenuAddItem(3, "Grand Master First Aid", 438, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 412) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Fishing", 439, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Fishing", 440, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end
if(intid == 13) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(3, "Unlearn Grand Master Tailor", 441, 0);
pUnit:GossipMenuAddItem(3, "Grand Master Tailor", 442, 0);
pUnit:GossipMenuAddItem(0, "Back to main menu", 813, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 415) then
pPlayer:UnlearnSpell(51303);
pPlayer:GossipComplete();
end
if(intid == 416) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51303);
pPlayer:GossipComplete();
end
if(intid == 417) then
pPlayer:UnlearnSpell(51298);
pPlayer:GossipComplete();
end
if(intid == 418) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51298);
pPlayer:GossipComplete();
end
if(intid == 419) then
pPlayer:UnlearnSpell(51312);
pPlayer:GossipComplete();
end
if(intid == 420) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51312);
pPlayer:GossipComplete();
end
if(intid == 421) then
pPlayer:UnlearnSpell(51305);
pPlayer:GossipComplete();
end
if(intid == 422) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51305);
pPlayer:GossipComplete();
end
if(intid == 423) then
pPlayer:UnlearnSpell(50301);
pPlayer:GossipComplete();
end
if(intid == 424) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(50301);
pPlayer:GossipComplete();
end
if(intid == 425) then
pPlayer:UnlearnSpell(45380);
pPlayer:GossipComplete();
end
if(intid == 426) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(45380);
pPlayer:GossipComplete();
end
if(intid == 427) then
pPlayer:UnlearnSpell(51310);
pPlayer:GossipComplete();
end
if(intid == 428) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51310);
pPlayer:GossipComplete();
end
if(intid == 429) then
pPlayer:UnlearnSpell(51301);
pPlayer:GossipComplete();
end
if(intid == 430) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51301);
pPlayer:GossipComplete();
end
if(intid == 431) then
pPlayer:UnlearnSpell(50309);
pPlayer:GossipComplete();
end
if(intid == 432) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(50309);
pPlayer:GossipComplete();
end
if(intid == 433) then
pPlayer:UnlearnSpell(50307);
pPlayer:GossipComplete();
end
if(intid == 434) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(50307);
pPlayer:GossipComplete();
end
if(intid == 435) then
pPlayer:UnlearnSpell(51295);
pPlayer:GossipComplete();
end
if(intid == 436) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51295);
pPlayer:GossipComplete();
end
if(intid == 437) then
pPlayer:UnlearnSpell(50299);
pPlayer:GossipComplete();
end
if(intid == 438) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(50299);
pPlayer:GossipComplete();
end
if(intid == 439) then
pPlayer:UnlearnSpell(51295);
pPlayer:GossipComplete();
end
if(intid == 440) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51295);
pPlayer:GossipComplete();
end
if(intid == 441) then
pPlayer:UnlearnSpell(51308);
pPlayer:GossipComplete();
end
if(intid == 442) then
pUnit:SendChatMessage(1, 0, "I gave you a spell. Go to your spellbook and learn it.");
pPlayer:LearnSpell(51308);
pPlayer:GossipComplete();
end

if (intid == 50) then
	pPlayer:AdvanceSkill(333, 450);
	pPlayer:AdvanceSkill(197, 450);
	pPlayer:AdvanceSkill(202, 450);
	pPlayer:AdvanceSkill(755, 450);
	pPlayer:AdvanceSkill(171, 450);
	pPlayer:AdvanceSkill(164, 450);
	pPlayer:AdvanceSkill(182, 450);
	pPlayer:AdvanceSkill(165, 450);
	pPlayer:AdvanceSkill(186, 450);
	pPlayer:AdvanceSkill(393, 450);
	pPlayer:AdvanceSkill(185, 450);
	pPlayer:AdvanceSkill(129, 450);
	pPlayer:AdvanceSkill(356, 450);
	pPlayer:AdvanceSkill(773, 450);
	pPlayer:GossipComplete();
end
end

RegisterUnitGossipEvent(5000042, 1, P_NPC_main_menu);
RegisterUnitGossipEvent(5000042, 2, P_NPC_on_gossip_select);
