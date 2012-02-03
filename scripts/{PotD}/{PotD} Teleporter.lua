
local function WarpNPC_OnGossipTalk(pUnit, event, pPlayer)
	if (pPlayer:IsInCombat() == true) or (pPlayer:IsPlayerAttacking() == true) then
		pPlayer:SendAreaTriggerMessage("You may not teleport during combat.");
	else
		pUnit:GossipCreateMenu(5000001, pPlayer, 0);
		local race = pPlayer:GetPlayerRace();
		if race==1 or race==3 or race==4 or race==7 or race==11 then
			pUnit:GossipMenuAddItem(3, "Alliance Cities", 1, 0);
		else
			pUnit:GossipMenuAddItem(3, "Horde Cities", 2, 0);
		end
		pUnit:GossipMenuAddItem(3, "WOTLK Locations", 8, 0);
		pUnit:GossipMenuAddItem(3, "WOTLK Instances", 9, 0);
		pUnit:GossipMenuAddItem(3, "Outland Locations", 5, 0);
		pUnit:GossipMenuAddItem(3, "Eastern Kingdom Locations", 3, 0);
		pUnit:GossipMenuAddItem(3, "Kalimdor Locations", 4, 0);
		pUnit:GossipMenuAddItem(3, "Azeroth Instances", 6, 0);
		pUnit:GossipMenuAddItem(3, "Outland Instances", 7, 0);
		pUnit:GossipMenuAddItem(1, "Gurubashi Arena", 420, 0);
		pUnit:GossipSendMenu(pPlayer);
	end
end

local function WarpNPC_OnGossipSelect(pUnit, event, pPlayer, id, intid, code)

	if(intid == 500029) then
	pUnit:GossipCreateMenu(5000001, pPlayer, 0);
	local race=pPlayer:GetPlayerRace();
	if race==1 or race==3 or race==4 or race==7 or race==11 then
		pUnit:GossipMenuAddItem(3, "Alliance Cities", 1, 0);
	else
		pUnit:GossipMenuAddItem(3, "Horde Cities", 2, 0);
	end
	pUnit:GossipMenuAddItem(3, "Eastern Kingdom Locations", 3, 0);
	pUnit:GossipMenuAddItem(3, "Kalimdor Locations", 4, 0);
	pUnit:GossipMenuAddItem(3, "Outland Locations", 5, 0);
	pUnit:GossipMenuAddItem(3, "Azeroth Instances", 6, 0);
	pUnit:GossipMenuAddItem(3, "Outland Instances", 7, 0);
	pUnit:GossipMenuAddItem(1, "Gurubashi Arena", 420, 0);
	pUnit:GossipMenuAddItem(3, "WOTLK Locations", 8, 0);
	pUnit:GossipMenuAddItem(3, "WOTLK Instances", 9, 0);
	pUnit:GossipSendMenu(pPlayer);
end

if(intid == 1) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Stormwind", 300, 0);
pUnit:GossipMenuAddItem(1, "Ironforge", 301, 0);
pUnit:GossipMenuAddItem(1, "Darnassus", 302, 0);
pUnit:GossipMenuAddItem(1, "Exodar", 303, 0);
--pUnit:GossipMenuAddItem(1, "World of Darkness Alliance Mall", 418, 0); -- no longer used but DND
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 2) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Orgrimmar", 304, 0);
pUnit:GossipMenuAddItem(1, "Thunder Bluff", 305, 0);
pUnit:GossipMenuAddItem(1, "Undercity", 306, 0);
pUnit:GossipMenuAddItem(1, "Silvermoon", 307, 0);
--pUnit:GossipMenuAddItem(1, "World of Darkness Horde Mall", 419, 0); -- no longer used but DND
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 3) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Alterac Mountains", 308, 0);
pUnit:GossipMenuAddItem(1, "Arathi Highlands", 309, 0);
pUnit:GossipMenuAddItem(1, "Badlands", 310, 0);
pUnit:GossipMenuAddItem(1, "Burning Steppes", 311, 0);
pUnit:GossipMenuAddItem(1, "Deadwind Pass", 312, 0);
pUnit:GossipMenuAddItem(1, "Dun Morogh", 313, 0);
pUnit:GossipMenuAddItem(1, "Duskwood", 314, 0);
pUnit:GossipMenuAddItem(1, "Eastern Plaguelands", 315, 0);
pUnit:GossipMenuAddItem(1, "Elwynn Forest", 316, 0);
pUnit:GossipMenuAddItem(1, "Eversong Woods", 317, 0);
pUnit:GossipMenuAddItem(1, "Ghostlands", 318, 0);
pUnit:GossipMenuAddItem(1, "Hillsbrad Foothills", 319, 0);
pUnit:GossipMenuAddItem(1, "Hinterlands", 320, 0);
pUnit:GossipMenuAddItem(1, "Loch Modan", 321, 0);
pUnit:GossipMenuAddItem(0, "--> Page 2 -->", 10, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 4) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Ashenvale", 331, 0);
pUnit:GossipMenuAddItem(1, "Azshara", 332, 0);
pUnit:GossipMenuAddItem(1, "Azuremyst Isle", 333, 0);
pUnit:GossipMenuAddItem(1, "Bloodmyst Isle", 334, 0);
pUnit:GossipMenuAddItem(1, "Darkshore", 335, 0);
pUnit:GossipMenuAddItem(1, "Durotar", 336, 0);
pUnit:GossipMenuAddItem(1, "Desolace", 337, 0);
pUnit:GossipMenuAddItem(1, "Dustwallow Marsh", 338, 0);
pUnit:GossipMenuAddItem(1, "Felwood", 339, 0);
pUnit:GossipMenuAddItem(1, "Feralas", 340, 0);
pUnit:GossipMenuAddItem(1, "Moonglade", 341, 0);
pUnit:GossipMenuAddItem(1, "Mulgore", 342, 0);
pUnit:GossipMenuAddItem(1, "Silithus", 343, 0);
pUnit:GossipMenuAddItem(1, "Stonetalon Mountains", 344, 0);
pUnit:GossipMenuAddItem(0, "--> Page 2 -->", 11, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 5) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Blade's Edge Mountains", 351, 0);
pUnit:GossipMenuAddItem(1, "Hellfire Peninsula", 352, 0);
pUnit:GossipMenuAddItem(1, "Nagrand", 353, 0);
pUnit:GossipMenuAddItem(1, "Netherstorm", 354, 0);
pUnit:GossipMenuAddItem(1, "Shadowmoon Valley", 355, 0);
pUnit:GossipMenuAddItem(1, "Terokkar Forest", 356, 0);
pUnit:GossipMenuAddItem(1, "Zangarmarsh", 357, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 6) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Ahn'Qiraj", 358, 0);
pUnit:GossipMenuAddItem(1, "Blackfathom Depths", 359, 0);
pUnit:GossipMenuAddItem(1, "Blackrock Depths", 360, 0);
pUnit:GossipMenuAddItem(1, "Blackrock Spire", 361, 0);
pUnit:GossipMenuAddItem(1, "Blackwing Lair", 362, 0);
pUnit:GossipMenuAddItem(1, "Caverns of Time", 363, 0);
pUnit:GossipMenuAddItem(1, "Deadmines", 364, 0);
pUnit:GossipMenuAddItem(1, "Dire Maul", 365, 0);
pUnit:GossipMenuAddItem(1, "Gnomeregan", 366, 0);
pUnit:GossipMenuAddItem(1, "Maraudon", 367, 0);
pUnit:GossipMenuAddItem(1, "Molten Core", 368, 0);
pUnit:GossipMenuAddItem(1, "Onyxia's Lair", 369, 0);
pUnit:GossipMenuAddItem(1, "Ragefire Chasm", 370, 0);
pUnit:GossipMenuAddItem(0, "--> Page 2 -->", 12, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 7) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "Outland Raids", 13, 0);
pUnit:GossipMenuAddItem(1, "Auchenai Crypts", 383, 0);
pUnit:GossipMenuAddItem(1, "Coilfang Reservoir", 385, 0);
pUnit:GossipMenuAddItem(1, "Hellfire Ramparts", 387, 0);
pUnit:GossipMenuAddItem(1, "Mana Tombs", 388, 0);
pUnit:GossipMenuAddItem(1, "Pheonix Hall", 389, 0);
pUnit:GossipMenuAddItem(1, "Sethekk Halls", 390, 0);
pUnit:GossipMenuAddItem(1, "Shadow Labyrinth", 391, 0);
pUnit:GossipMenuAddItem(1, "The Blood Furnace", 423, 0);
pUnit:GossipMenuAddItem(1, "The Botanica", 392, 0);
pUnit:GossipMenuAddItem(1, "The Mechanar", 393, 0);
pUnit:GossipMenuAddItem(1, "The Shattered Halls", 425, 0);
pUnit:GossipMenuAddItem(1, "The Slave Pens", 426, 0);
pUnit:GossipMenuAddItem(1, "The Steamvault", 427, 0);
pUnit:GossipMenuAddItem(1, "The Underbog", 428, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 8) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Dalaran", 403, 0);
pUnit:GossipMenuAddItem(1, "DK Start Zone", 405, 0);
pUnit:GossipMenuAddItem(1, "Borean Tundra", 394, 0);
pUnit:GossipMenuAddItem(1, "Crystalsong Forest", 404, 0);
pUnit:GossipMenuAddItem(1, "Dragonblight", 395, 0);
pUnit:GossipMenuAddItem(1, "Grizzly Hills", 396, 0);
pUnit:GossipMenuAddItem(1, "Howling Fjord", 397, 0);
pUnit:GossipMenuAddItem(1, "Icecrown", 398, 0);
pUnit:GossipMenuAddItem(1, "Sholazar Basin", 399, 0);
pUnit:GossipMenuAddItem(1, "Storm Peaks", 400, 0);
pUnit:GossipMenuAddItem(1, "Wintergrasp", 401, 0);
pUnit:GossipMenuAddItem(1, "Zul'Drak", 402, 0);
pUnit:GossipMenuAddItem(1, "Patch 3.2+ Wotlk Locations", 430, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 9) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Azjol'Nerub", 406, 0);
pUnit:GossipMenuAddItem(1, "Drak'Tharon", 407, 0);
pUnit:GossipMenuAddItem(1, "Gun'Drak", 408, 0);
pUnit:GossipMenuAddItem(1, "Icecrown Citadel", 409, 0);
pUnit:GossipMenuAddItem(1, "Naxxaramas", 410, 0);
pUnit:GossipMenuAddItem(1, "Obsidian Sanctum", 411, 0);
pUnit:GossipMenuAddItem(1, "The Nexus/Occulus/Eye of Eternity", 412, 0);
pUnit:GossipMenuAddItem(1, "Halls of Stone/Halls of Lightning", 413, 0);
pUnit:GossipMenuAddItem(1, "Utgarde Keep", 414, 0);
pUnit:GossipMenuAddItem(1, "Utgarde Pinnacle", 415, 0);
pUnit:GossipMenuAddItem(1, "Vault of Archevon", 416, 0);
pUnit:GossipMenuAddItem(1, "Violet Hold", 417, 0);
pUnit:GossipMenuAddItem(1, "Patch 3.2+ Instances", 431, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 10) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Searing Gorge", 322, 0);
pUnit:GossipMenuAddItem(1, "Silverpine Forest", 323, 0);
pUnit:GossipMenuAddItem(1, "Stranglethorn Vale", 324, 0);
pUnit:GossipMenuAddItem(1, "Swamp of Sorrows", 325, 0);
pUnit:GossipMenuAddItem(1, "The Blasted Lands", 326, 0);
pUnit:GossipMenuAddItem(1, "Trisfal Glades", 327, 0);
pUnit:GossipMenuAddItem(1, "Western Plaguelands", 328, 0);
pUnit:GossipMenuAddItem(1, "Westfall", 329, 0);
pUnit:GossipMenuAddItem(1, "Wetlands", 330, 0);
pUnit:GossipMenuAddItem(0, "<-- Page 1 <--", 3, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 11) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Tanaris", 345, 0);
pUnit:GossipMenuAddItem(1, "Teldrassil", 346, 0);
pUnit:GossipMenuAddItem(1, "The Barrens", 347, 0);
pUnit:GossipMenuAddItem(1, "Thousand Needles", 348, 0);
pUnit:GossipMenuAddItem(1, "Un Goro Crater", 349, 0);
pUnit:GossipMenuAddItem(1, "Winterspring", 350, 0);
pUnit:GossipMenuAddItem(0, "<-- Page 1 <--", 4, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 12) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Razorfen Downs", 371, 0);
pUnit:GossipMenuAddItem(1, "Razorfen Kraul", 372, 0);
pUnit:GossipMenuAddItem(1, "Scarlet Monestary", 373, 0);
pUnit:GossipMenuAddItem(1, "Scholomance", 374, 0);
pUnit:GossipMenuAddItem(1, "Shadowfang Keep", 375, 0);
pUnit:GossipMenuAddItem(1, "Stratholme", 376, 0);
pUnit:GossipMenuAddItem(1, "Sunken Temple", 377, 0);
pUnit:GossipMenuAddItem(1, "Uldaman", 378, 0);
pUnit:GossipMenuAddItem(1, "Wailing Caverns", 379, 0);
pUnit:GossipMenuAddItem(1, "Zul'Aman", 380, 0);
pUnit:GossipMenuAddItem(1, "Zul'Farrak", 381, 0);
pUnit:GossipMenuAddItem(1, "Zul'Gurub", 382, 0);
pUnit:GossipMenuAddItem(0, "<-- Page 1 <--", 6, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 13) then
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Magtheridon's Lair", 421, 0);
pUnit:GossipMenuAddItem(1, "Sepentshrine Cavern", 422, 0);
pUnit:GossipMenuAddItem(1, "Gruul's Lair", 386, 0);
pUnit:GossipMenuAddItem(1, "The Eye", 424, 0);
pUnit:GossipMenuAddItem(1, "Black Temple", 384, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 300) then --Stormwind
pPlayer:Teleport(0, -8928, 540, 95);
pPlayer:GossipComplete();
end

if(intid == 301) then --Ironforge
pPlayer:Teleport(0, -4981, -881, 502);
pPlayer:GossipComplete();
end

if(intid == 302) then --Darnassus
pPlayer:Teleport(1, 9946, 2613, 1318.5);
pPlayer:GossipComplete();
end

if(intid == 303) then --Exodar
pPlayer:Teleport(530, -4014, -11895, -1.5);
pPlayer:GossipComplete();
end

if(intid == 304) then --Orgrimmar
pPlayer:Teleport(1, 1502, -4415, 22);
pPlayer:GossipComplete();
end

if(intid == 305) then --Thunder Bluff
pPlayer:Teleport(1, -1283, 158, 130);
pPlayer:GossipComplete();
end

if(intid == 306) then --Undercity
pPlayer:Teleport(0, 1752, 239, 61.5);
pPlayer:GossipComplete();
end

if(intid == 307) then --Silvermoon
pPlayer:Teleport(530, 9392, -7277, 14.5);
pPlayer:GossipComplete();
end

if(intid == 308) then --Alterac Mountains
pPlayer:Teleport(0, 237, -652, 119);
pPlayer:GossipComplete();
end

if(intid == 309) then --Arathi Highlands
pPlayer:Teleport(0, -1550, -2495, 55);
pPlayer:GossipComplete();
end

if(intid == 310) then --Badlands
pPlayer:Teleport(0, -6775, -3286, 242);
pPlayer:GossipComplete();
end

if(intid == 311) then --Burning Steppes
pPlayer:Teleport(0, -7975, -1786, 133.5);
pPlayer:GossipComplete();
end

if(intid == 312) then --Deadwind Pass
pPlayer:Teleport(0, -10447, -1872, 105);
pPlayer:GossipComplete();
end

if(intid == 313) then --Dun Morogh
pPlayer:Teleport(0, -5709, -1339, 395);
pPlayer:GossipComplete();
end

if(intid == 314) then --Duskwood
pPlayer:Teleport(0, -10914, -528, 54);
pPlayer:GossipComplete();
end

if(intid == 315) then --Eastern Plaguelands
pPlayer:Teleport(0, 1739, -3623, 120);
pPlayer:GossipComplete();
end

if(intid == 316) then --Elwynn Forest
pPlayer:Teleport(0, -9591, -463, 58);
pPlayer:GossipComplete();
end

if(intid == 317) then --Eversong Woods
pPlayer:Teleport(530, 8250, -7214, 140);
pPlayer:GossipComplete();
end

if(intid == 318) then --Ghostlands
pPlayer:Teleport(530, 6396, -6848, 101);
pPlayer:GossipComplete();
end

if(intid == 319) then --Hillsbrad Foothills
pPlayer:Teleport(0, -440, -582, 54);
pPlayer:GossipComplete();
end

if(intid == 320) then --Hinterlands
pPlayer:Teleport(0, 235, -3298, 110);
pPlayer:GossipComplete();
end

if(intid == 321) then --Loch Modan
pPlayer:Teleport(0, -5853, -3251, 303);
pPlayer:GossipComplete();
end

if(intid == 322) then --Searing Gorge
pPlayer:Teleport(0, -6645, -1918, 245);
pPlayer:GossipComplete();
end

if(intid == 323) then --Silverpine Forest
pPlayer:Teleport(0, 628, 1291, 87);
pPlayer:GossipComplete();
end

if(intid == 324) then --Stranglethorn Vale
pPlayer:Teleport(0, -14246, 301, 28);
pPlayer:GossipComplete();
end

if(intid == 325) then --Swamp of Sorrows
pPlayer:Teleport(0, -10476, -2408, 74);
pPlayer:GossipComplete();
end

if(intid == 326) then --The Blasted Lands
pPlayer:Teleport(0, -11189, -3023, 8);
pPlayer:GossipComplete();
end

if(intid == 327) then --Tirisfal Glades
pPlayer:Teleport(0, 1599, 569, 38);
pPlayer:GossipComplete();
end

if(intid == 328) then --Western Plaguelands
pPlayer:Teleport(0, 1676, -1366, 70);
pPlayer:GossipComplete();
end

if(intid == 329) then --Westfall
pPlayer:Teleport(0, -10922, 500028, 36);
pPlayer:GossipComplete();
end

if(intid == 330) then --Wetlands
pPlayer:Teleport(0, -3604, -2711, 20);
pPlayer:GossipComplete();
end

if(intid == 331) then --Ashenvale
pPlayer:Teleport(1, 2319, -1672, 124);
pPlayer:GossipComplete();
end

if(intid == 332) then --Azshara
pPlayer:Teleport(1, 3336, -4599, 93);
pPlayer:GossipComplete();
end

if(intid == 333) then --Azuremyst Isle
pPlayer:Teleport(530, -4540, -11933, 28);
pPlayer:GossipComplete();
end

if(intid == 334) then --Bloodmyst Isle
pPlayer:Teleport(530, -2721, -12206, 10);
pPlayer:GossipComplete();
end

if(intid == 335) then --Darkshore
pPlayer:Teleport(1, 5084, 242, 29);
pPlayer:GossipComplete();
end

if(intid == 336) then --Desolace
pPlayer:Teleport(1, -548, 1276, 90);
pPlayer:GossipComplete();
end

if(intid == 337) then --Durotar
pPlayer:Teleport(1, 301, -4184, 28);
pPlayer:GossipComplete();
end

if(intid == 338) then --Dustwallow Marsh
pPlayer:Teleport(1, -3345, -3078, 33);
pPlayer:GossipComplete();
end

if(intid == 339) then --Felwood
pPlayer:Teleport(1, 5537, -585, 359);
pPlayer:GossipComplete();
end

if(intid == 340) then --Feralas
pPlayer:Teleport(1, -4811, 1037, 105);
pPlayer:GossipComplete();
end

if(intid == 341) then --Moonglade
pPlayer:Teleport(1, 7931, -2616, 493);
pPlayer:GossipComplete();
end

if(intid == 342) then --Mulgore
pPlayer:Teleport(1, -2372, -893, -9);
pPlayer:GossipComplete();
end

if(intid == 343) then --Silithus
pPlayer:Teleport(1, -6839, 763, 43);
pPlayer:GossipComplete();
end

if(intid == 344) then --Stonetalon Mountains
pPlayer:Teleport(1, 588, 330, 48);
pPlayer:GossipComplete();
end

if(intid == 345) then --Tanaris
pPlayer:Teleport(1, -7149, -3746, 9);
pPlayer:GossipComplete();
end

if(intid == 346) then --Teldrassil
pPlayer:Teleport(1, 5000247, 649, 1310);
pPlayer:GossipComplete();
end

if(intid == 347) then --The Barrens
pPlayer:Teleport(1, 567, -2573, 96);
pPlayer:GossipComplete();
end

if(intid == 348) then --Thousand Needles
pPlayer:Teleport(1, -4969, -1723, -61);
pPlayer:GossipComplete();
end

if(intid == 349) then --Un Goro Crater
pPlayer:Teleport(1, -7932, -2139, -230);
pPlayer:GossipComplete();
end

if(intid == 350) then --Winterspring
pPlayer:Teleport(1, 6719, -4646, 722);
pPlayer:GossipComplete();
end

if(intid == 351) then --Blade's Edge Mountains
pPlayer:Teleport(530, 2924, 5982, -1);
pPlayer:GossipComplete();
end

if(intid == 352) then --Hellfire Peninsula
pPlayer:Teleport(530, -220, 2217, 86);
pPlayer:GossipComplete();
end

if(intid == 353) then --Nagrand
pPlayer:Teleport(530, -1525, 6571, 21);
pPlayer:GossipComplete();
end

if(intid == 354) then --Netherstorm
pPlayer:Teleport(530, 3052, 3670, 143);
pPlayer:GossipComplete();
end

if(intid == 355) then --Shadowmoon Valley
pPlayer:Teleport(530, -3693, 2344, 77);
pPlayer:GossipComplete();
end

if(intid == 356) then --Terokkar Forest
pPlayer:Teleport(530, -1975, 4516, 13);
pPlayer:GossipComplete();
end

if(intid == 357) then --Zangarmarsh
pPlayer:Teleport(530, -205, 5545, 24);
pPlayer:GossipComplete();
end

if(intid == 358) then --Ahn'Qiraj
pPlayer:Teleport(1, -8187, 1539, 5);
pPlayer:GossipComplete();
end

if(intid == 359) then --Blackfathom Depths
pPlayer:Teleport(1, 4248, 736, -26);
pPlayer:GossipComplete();
end

if(intid == 360) then --Blackrock Depths
pPlayer:Teleport(0, -7187, -914, 166);
pPlayer:GossipComplete();
end

if(intid == 361) then --Blackrock Spire
pPlayer:Teleport(0, -7532, -1221, 286);
pPlayer:GossipComplete();
end

if(intid == 362) then --Blackwing Lair
pPlayer:Teleport(229, 137, -474, 117);
pPlayer:GossipComplete();
end

if(intid == 363) then --Caverns of Time
pPlayer:Teleport(1, -8568, -4260, -213);
pPlayer:GossipComplete();
end

if(intid == 364) then --Deadmines
pPlayer:Teleport(0, 11209, 1664, 25);
pPlayer:GossipComplete();
end

if(intid == 365) then --Dire Maul
pPlayer:Teleport(1, -3524, 1124, 162);
pPlayer:GossipComplete();
end

if(intid == 366) then --Gnomeregan
pPlayer:Teleport(0, -5164, 918, 258);
pPlayer:GossipComplete();
end

if(intid == 367) then --Maraudon
pPlayer:Teleport(1, -1458, 2606, 76);
pPlayer:GossipComplete();
end

if(intid == 368) then --Molten Core
pPlayer:Teleport(230, 1123, -455, -101);
pPlayer:GossipComplete();
end

if(intid == 369) then --Onyxia's Lair
pPlayer:Teleport(1, -4709, -3729, 55);
pPlayer:GossipComplete();
end

if(intid == 370) then --Ragefire Chasm
pPlayer:Teleport(1, 1805, -4404, -18);
pPlayer:GossipComplete();
end

if(intid == 371) then --Razorfen Downs
pPlayer:Teleport(1, -4661, -2511, 81);
pPlayer:GossipComplete();
end

if(intid == 372) then --Razorfen Kraul
pPlayer:Teleport(1, -4473, -1690, 82);
pPlayer:GossipComplete();
end

if(intid == 373) then --Scarlet Monestary
pPlayer:Teleport(0, 2841, -692, 140);
pPlayer:GossipComplete();
end

if(intid == 374) then --Scholomance
pPlayer:Teleport(0, 1265, -2560, 95);
pPlayer:GossipComplete();
end

if(intid == 375) then --Shadowfang Keep
pPlayer:Teleport(0, -241, 1545, 77);
pPlayer:GossipComplete();
end

if(intid == 376) then --Stratholme
pPlayer:Teleport(0, 3345, -3380, 145);
pPlayer:GossipComplete();
end

if(intid == 377) then --Sunken Temple
pPlayer:Teleport(0, -10457, -3828, 19);
pPlayer:GossipComplete();
end

if(intid == 378) then --Uldaman
pPlayer:Teleport(0, -6704, -2955, 209);
pPlayer:GossipComplete();
end

if(intid == 379) then --Wailing Caverns
pPlayer:Teleport(1, -737, -2219, 17);
pPlayer:GossipComplete();
end

if(intid == 380) then --Zul'Aman
pPlayer:Teleport(530, 6850, -7950, 171);
pPlayer:GossipComplete();
end

if(intid == 381) then --Zul'Farrak
pPlayer:Teleport(1, -6821, -2890, 9);
pPlayer:GossipComplete();
end

if(intid == 382) then --Zul'Gurub
pPlayer:Teleport(0, -11916, -1204, 93);
pPlayer:GossipComplete();
end

if(intid == 383) then --Auchenai Crypts
pPlayer:Teleport(530, -3367, 5216, -101);
pPlayer:GossipComplete();
end

if(intid == 384) then --Black Temple
pPlayer:Teleport(530, -3614, 310, 40);
pPlayer:GossipComplete();
end

if(intid == 385) then --Coilfang Reservoir
pPlayer:Teleport(530, 792, 6863, -64);
pPlayer:GossipComplete();
end

if(intid == 386) then --Gruul's Lair
pPlayer:Teleport(530, 3529, 5096, 3);
pPlayer:GossipComplete();
end

if(intid == 387) then --Hellfire Ramparts
pPlayer:Teleport(530, -360, 3071, -16);
pPlayer:GossipComplete();
end

if(intid == 388) then --Mana Tombs
pPlayer:Teleport(530, -3100, 4950, -100);
pPlayer:GossipComplete();
end

if(intid == 389) then --Pheonix Hall
pPlayer:Teleport(530, 3084, 1385, 185);
pPlayer:GossipComplete();
end

if(intid == 390) then --Sethekk Halls
pPlayer:Teleport(530, -3364, 4675, -101);
pPlayer:GossipComplete();
end

if(intid == 391) then --Shadow Labyrinth
pPlayer:Teleport(530, -3630, 4941, -101);
pPlayer:GossipComplete();
end

if(intid == 392) then --The Botanica
pPlayer:Teleport(530, 3404, 1488, 183);
pPlayer:GossipComplete();
end

if(intid == 393) then --The Mechanar
pPlayer:Teleport(530, 2870, 1557, 252);
pPlayer:GossipComplete();
end

if(intid == 394) then --Borean Tundra
pPlayer:Teleport(571, 3008, 5290, 60);
pPlayer:GossipComplete();
end

if(intid == 395) then --Dragonblight
pPlayer:Teleport(571, 3118, 107, 72);
pPlayer:GossipComplete();
end

if(intid == 396) then --Grizzly Hills
pPlayer:Teleport(571, 3681, -3472, 243);
pPlayer:GossipComplete();
end

if(intid == 397) then --Howling Fjord
pPlayer:Teleport(571, 1267, -4062, 143);
pPlayer:GossipComplete();
end

if(intid == 398) then --Icecrown
pPlayer:Teleport(571, 7514, 2091, 623);
pPlayer:GossipComplete();
end

if(intid == 350002) then --Sholazar Basin
pPlayer:Teleport(571, 5501, 4879, -198);
pPlayer:GossipComplete();
end

if(intid == 400) then --Storm Peaks
pPlayer:Teleport(571, 7514, -1037, 467);
pPlayer:GossipComplete();
end

if(intid == 401) then --Wintergrasp
pPlayer:Teleport(571, 4611, 2848, 3397);
pPlayer:GossipComplete();
end

if(intid == 402) then --Zul'Drak
pPlayer:Teleport(571, 5441, -2304, 298);
pPlayer:GossipComplete();
end

if(intid == 403) then --Dalaran
pPlayer:Teleport(571, 5797, 629, 648);
pPlayer:GossipComplete();
end

if(intid == 404) then --Crystalsong Forest
pPlayer:Teleport(571, 5402, 72, 151);
pPlayer:GossipComplete();
end

if(intid == 405) then --DK Start Zone
pPlayer:Teleport(609, 2353, -5666, 427);
pPlayer:GossipComplete();
end

if(intid == 406) then --Azjol'Nerub
pPlayer:Teleport(571, 3721, 2155, 37);
pPlayer:GossipComplete();
end

if(intid == 407) then --Drak'Tharon
pPlayer:Teleport(571, 4897, 2046, 249);
pPlayer:GossipComplete();
end

if(intid == 408) then --Gun'Drak
pPlayer:Teleport(571, 6925, 4447, 451);
pPlayer:GossipComplete();
end

if(intid == 409) then --Icecrown Citadel
pPlayer:Teleport(571, 6151, 2244, 508);
pPlayer:GossipComplete();
end

if(intid == 410) then --Naxxaramas
pPlayer:Teleport(571, 3668, -1049, 131);
pPlayer:GossipComplete();
end

if(intid == 411) then --Obsidian Sanctum
pPlayer:Teleport(571, 3561, 275, -115);
pPlayer:GossipComplete();
end

if(intid == 412) then --The Nexus/Occulus/Eye of Eternity
pPlayer:Teleport(571, 3783, 6942, 105);
pPlayer:GossipComplete();
end

if(intid == 413) then --Halls of Stone/Halls of Lightning
pPlayer:Teleport(571, 8937, 1266, 1026);
pPlayer:GossipComplete();
end

if(intid == 414) then --Utgarde Keep
pPlayer:Teleport(571, 1228, -4943, 36);
pPlayer:GossipComplete();
end

if(intid == 415) then --Utgarde Pinnacle
pPlayer:Teleport(571, 1274, -4857, 216);
pPlayer:GossipComplete();
end

if(intid == 416) then --Vault of Archevon
pPlayer:Teleport(571, 5440, 2840, 421);
pPlayer:GossipComplete();
end

if(intid == 417) then --Violet Hold
pPlayer:Teleport(571, 5708, 521, 650);
pPlayer:GossipComplete();
end

if(intid == 418) then --Alliance Mall
pPlayer:Teleport(0, -11085, -1794, 53);
pPlayer:GossipComplete();
end

if(intid == 419) then --Horde Mall
pPlayer:Teleport(1, 5153, -1337, 1360);
pPlayer:GossipComplete();
end

if(intid == 420) then --Gurubashi Arena
pPlayer:Teleport(0, -13282, 117, 25);
pPlayer:GossipComplete();
end

if(intid == 421) then --Magtheridon's Lair
pPlayer:Teleport(530, -313, 3088, -116);
pPlayer:GossipComplete();
end

if(intid == 422) then --Serpentshrine Cavern
pPlayer:Teleport(530, 830, 6865, -63);
pPlayer:GossipComplete();
end

if(intid == 423) then --The Blood Furnace
pPlayer:Teleport(530, -303, 3164, 32);
pPlayer:GossipComplete();
end

if(intid == 424) then --The Eye
pPlayer:Teleport(530, 3087, 1373, 185);
pPlayer:GossipComplete();
end

if(intid == 425) then --The Shattered Halls
pPlayer:Teleport(530, -311, 3083, -3);
pPlayer:GossipComplete();
end

if(intid == 426) then --The Slave Pens
pPlayer:Teleport(530, 719, 9929, -73);
pPlayer:GossipComplete();
end

if(intid == 427) then --The Steamvault
pPlayer:Teleport(530, 816, 6934, -80);
pPlayer:GossipComplete();
end

if(intid == 428) then --The Underbog
pPlayer:Teleport(530, 777, 6763, -72);
pPlayer:GossipComplete();
end

if(intid == 430) then -- 3.2~ wrath locations
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(1, "Argent Tournament", 433, 0);
pUnit:GossipMenuAddItem(1, "Ice Crown Staging Grounds", 434, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 431) then -- 3.2~ instances
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "Patch 3.2+ Raids", 432, 0);
pUnit:GossipMenuAddItem(1, "Forge of Souls", 436, 0);
pUnit:GossipMenuAddItem(1, "Pit of Sauron(Pit of Tears);", 437, 0);
pUnit:GossipMenuAddItem(1, "Trial of the Champion", 438, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 432) then -- 3.2~ raids
pUnit:GossipCreateMenu(5000001, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "Ice Crown Citadel", 439, 0);
pUnit:GossipMenuAddItem(2, "Trial of the Crusader", 440, 0);
pUnit:GossipMenuAddItem(2, "Ruby Sanctum", 441, 0);
pUnit:GossipMenuAddItem(0, "[Back]", 500029, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 433) then -- Argent Tournament
pPlayer:Teleport(571, 8404, 791, 550);
pPlayer:GossipComplete();
end

if(intid == 434) then -- ICC staging area
pPlayer:Teleport(571, 5635, 2061, 800);
pPlayer:GossipComplete();
end

if(intid == 436) then -- FOS
pPlayer:Teleport(632, 4917, 2186, 639);
pPlayer:GossipComplete();
end

if(intid == 437) then -- POT
pPlayer:Teleport(658, 434, 213, 529);
pPlayer:GossipComplete();
end

if(intid == 438) then -- TOC
pPlayer:Teleport(650, 795, 617, 414);
pPlayer:GossipComplete();
end

if(intid == 439) then -- ICC RAID
pPlayer:Teleport(631, -27, 2212, 31);
pPlayer:GossipComplete();
end

if(intid == 440) then -- TotC
pPlayer:Teleport(649, 563, 89, 396);
pPlayer:GossipComplete();
end

if(intid == 441) then -- RubySanctum
pPlayer:Teleport(724, 3261, 533, 88);
pPlayer:GossipComplete();
end

end

RegisterUnitGossipEvent(5000040 , 1, WarpNPC_OnGossipTalk);
RegisterUnitGossipEvent(5000040 , 2, WarpNPC_OnGossipSelect);
