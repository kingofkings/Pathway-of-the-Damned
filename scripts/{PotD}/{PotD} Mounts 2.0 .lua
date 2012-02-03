
local MOUNTTOKEN = 75000

local function MountVendor_OnGossip(pUnit, event, pPlayer)
	local race = pPlayer:GetPlayerRace();
	if race==1 or race==3 or race==4 or race==7 or race==11 then
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain a mount!", 598, 0);
		pUnit:GossipMenuAddItem(0, "Nevermind.", 596, 0);
		pUnit:GossipSendMenu(pPlayer);
	else
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain a mount!", 597, 0);
		pUnit:GossipMenuAddItem(0, "Nevermind.", 596, 0);
		pUnit:GossipSendMenu(pPlayer);
	end
end

local function MountVendor_GossipSubmenus(pUnit, event, pPlayer, id, intid, code)
	if(intid == 598) then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "[Alliance epic ground mounts]", 600, 0);
	pUnit:GossipMenuAddItem(2, "[Alliance epic flying mounts]", 601, 0);
	pUnit:GossipMenuAddItem(9, "[Epic PvP mounts]", 602, 0);
	pUnit:GossipMenuAddItem(9, "[Arena mounts]", 599, 0);
	pUnit:GossipMenuAddItem(0, "[Epic rare mounts]", 603, 0);
	pUnit:GossipMenuAddItem(0, "[Epic neutral mounts]", 604, 0);
	pUnit:GossipMenuAddItem(0, "[Epic special mounts]", 605, 0);
	pUnit:GossipMenuAddItem(1, "[Epic super rare mounts (requires token);]", 606, 0);
	pUnit:GossipMenuAddItem(1, "[3.3.2 Updated Mounts]", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
end

if(intid == 597) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "[Horde epic ground mounts]", 607, 0);
pUnit:GossipMenuAddItem(2, "[Horde epic flying mounts]", 608, 0);
pUnit:GossipMenuAddItem(9, "[Epic PvP mounts]", 609, 0);
pUnit:GossipMenuAddItem(9, "[Arena mounts]", 599, 0);
pUnit:GossipMenuAddItem(0, "[Epic rare mounts]", 603, 0);
pUnit:GossipMenuAddItem(0, "[Epic neutral mounts]", 604, 0);
pUnit:GossipMenuAddItem(0, "[Epic special mounts]", 605, 0);
pUnit:GossipMenuAddItem(1, "[Epic super rare mounts (requires token);]", 606, 0);
pUnit:GossipMenuAddItem(1, "[3.3.2 Updated Mounts]", 740, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 600) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "[Swift Palomino]", 610, 0);
pUnit:GossipMenuAddItem(0, "[Swift Brown Steed]", 611, 0);
pUnit:GossipMenuAddItem(0, "[Swift White Steed]", 612, 0);
pUnit:GossipMenuAddItem(0, "[Swift Stormsaber]", 613, 0);
pUnit:GossipMenuAddItem(0, "[Swift Mistsaber]", 614, 0);
pUnit:GossipMenuAddItem(0, "[Swift Frostsaber]", 615, 0);
pUnit:GossipMenuAddItem(0, "[Swift Brown Ram]", 616, 0);
pUnit:GossipMenuAddItem(0, "[Swift Gray Ram]", 617, 0);
pUnit:GossipMenuAddItem(0, "[Swift White Ram]", 618, 0);
pUnit:GossipMenuAddItem(0, "[Great Blue Elekk]", 619, 0);
pUnit:GossipMenuAddItem(0, "[Great Green Elekk]", 620, 0);
pUnit:GossipMenuAddItem(0, "[Great Purple Elekk]", 621, 0);
pUnit:GossipMenuAddItem(0, "[Swift Green Mechanostrider]", 622, 0);
pUnit:GossipMenuAddItem(0, "[Swift White Mechanostrider]", 623, 0);
pUnit:GossipMenuAddItem(0, "[Swift Yellow Mechanostrider]", 624, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 601) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "[Swift Blue Gryphon]", 625, 0);
pUnit:GossipMenuAddItem(2, "[Swift Green Gryphon]", 626, 0);
pUnit:GossipMenuAddItem(2, "[Swift Purple Gryphon]", 627, 0);
pUnit:GossipMenuAddItem(2, "[Swift Red Gryphon]", 628, 0);
pUnit:GossipMenuAddItem(2, "[Armored Snowy Gryphon]", 629, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 602) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "[Black War Steed]", 630, 0);
pUnit:GossipMenuAddItem(0, "[Black War Tiger]", 631, 0);
pUnit:GossipMenuAddItem(0, "[Black War Ram]", 632, 0);
pUnit:GossipMenuAddItem(0, "[Black War Elekk]", 633, 0);
pUnit:GossipMenuAddItem(0, "[Black Battlestrider]", 634, 0);
pUnit:GossipMenuAddItem(0, "[Stormpike Battle Charger]", 635, 0);
pUnit:GossipMenuAddItem(0, "[Black War Mammoth]", 636, 0);
pUnit:GossipMenuAddItem(0, "[Dark Riding Talbuk]", 637, 0);
pUnit:GossipMenuAddItem(0, "[Dark War Talbuk]", 638, 0);
pUnit:GossipMenuAddItem(0, "[Black War Bear]", 639, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 607) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "[Green Skeletal Warhorse]", 640, 0);
pUnit:GossipMenuAddItem(0, "[Purple Skeletal Warhorse]", 641, 0);
pUnit:GossipMenuAddItem(0, "[Swift Gray Wolf]", 642, 0);
pUnit:GossipMenuAddItem(0, "[Swift Timber Wolf]", 643, 0);
pUnit:GossipMenuAddItem(0, "[Swift Brown Wolf]", 644, 0);
pUnit:GossipMenuAddItem(0, "[Great White Kodo]", 645, 0);
pUnit:GossipMenuAddItem(0, "[Great Gray Kodo]", 646, 0);
pUnit:GossipMenuAddItem(0, "[Great Brown Kodo]", 647, 0);
pUnit:GossipMenuAddItem(0, "[Swift Blue Raptor]", 648, 0);
pUnit:GossipMenuAddItem(0, "[Swift Orange Raptor]", 649, 0);
pUnit:GossipMenuAddItem(0, "[Swift Olive Raptor]", 650, 0);
pUnit:GossipMenuAddItem(0, "[Swift Pink Hawkstrider]", 651, 0);
pUnit:GossipMenuAddItem(0, "[Swift Green Hawkstrider]", 652, 0);
pUnit:GossipMenuAddItem(0, "[Swift Purple Hawkstrider]", 653, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 608) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "[Swift Green Wind Rider]", 654, 0);
pUnit:GossipMenuAddItem(2, "[Swift Purple Wind Rider]", 655, 0);
pUnit:GossipMenuAddItem(2, "[Swift Red Wind Rider]", 656, 0);
pUnit:GossipMenuAddItem(2, "[Swift Yellow Wind Rider]", 657, 0);
pUnit:GossipMenuAddItem(2, "[Armored Blue Wind Rider]", 658, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 609) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "[Red Skeletal Warhorse]", 659, 0);
pUnit:GossipMenuAddItem(0, "[Black War Kodo]", 660, 0);
pUnit:GossipMenuAddItem(0, "[Black War Wolf]", 661, 0);
pUnit:GossipMenuAddItem(0, "[Black War Raptor]", 662, 0);
pUnit:GossipMenuAddItem(0, "[Swift Warstrider]", 663, 0);
pUnit:GossipMenuAddItem(0, "[Frostwolf Howler]", 664, 0);
pUnit:GossipMenuAddItem(0, "[Black War Mammoth]", 665, 0);
pUnit:GossipMenuAddItem(0, "[Dark Riding Talbuk]", 666, 0);
pUnit:GossipMenuAddItem(0, "[Dark War Talbuk]", 667, 0);
pUnit:GossipMenuAddItem(0, "[Black War Bear]", 668, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 599) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Swift Nether Drake]", 669, 0);
	pUnit:GossipMenuAddItem(2, "[Merciless Nether Drake]", 670, 0);
	pUnit:GossipMenuAddItem(2, "[Vengeful Netehr Drake]", 671, 0);
	pUnit:GossipMenuAddItem(2, "[Brutal Nether Drake]", 672, 0);
	pUnit:GossipMenuAddItem(2, "[Deadly Gladiator's Frostwyrm]", 750, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Swift Nether Drake]", 669, 0);
	pUnit:GossipMenuAddItem(2, "[Merciless Nether Drake]", 670, 0);
	pUnit:GossipMenuAddItem(2, "[Vengeful Netehr Drake]", 671, 0);
	pUnit:GossipMenuAddItem(2, "[Brutal Nether Drake]", 672, 0);
	pUnit:GossipMenuAddItem(2, "[Deadly Gladiator's Frostwyrm]", 750, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 603) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "[Amani War Bear]", 673, 0);
	pUnit:GossipMenuAddItem(0, "[Rivendare's Deathcharger]", 674, 0);
	pUnit:GossipMenuAddItem(0, "[Fiery Warhorse]", 675, 0);
	pUnit:GossipMenuAddItem(2, "[Black Drake]", 676, 0);
	pUnit:GossipMenuAddItem(2, "[Twilight Drake]", 677, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Drake]", 678, 0);
	pUnit:GossipMenuAddItem(2, "[Azure Drake]", 679, 0);
	pUnit:GossipMenuAddItem(2, "[Bronze Drake]", 680, 0);
	pUnit:GossipMenuAddItem(0, "[Grand War Mammoth]", 681, 0);
	pUnit:GossipMenuAddItem(0, "[Ravenlord]", 682, 0);
	pUnit:GossipMenuAddItem(0, "[Swift White Hawkstrider]", 683, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Razzashi Raptor]", 684, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Zulian Tiger]", 685, 0);
	pUnit:GossipMenuAddItem(2, "[Albino Drake]", 686, 0);
	pUnit:GossipMenuAddItem(0, "[White Polar Bear]", 687, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "[Amani War Bear]", 673, 0);
	pUnit:GossipMenuAddItem(0, "[Rivendare's Deathcharger]", 674, 0);
	pUnit:GossipMenuAddItem(0, "[Fiery Warhorse]", 675, 0);
	pUnit:GossipMenuAddItem(2, "[Black Drake]", 676, 0);
	pUnit:GossipMenuAddItem(2, "[Twilight Drake]", 677, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Drake]", 678, 0);
	pUnit:GossipMenuAddItem(2, "[Azure Drake]", 679, 0);
	pUnit:GossipMenuAddItem(2, "[Bronze Drake]", 680, 0);
	pUnit:GossipMenuAddItem(0, "[Grand War Mammoth]", 681, 0);
	pUnit:GossipMenuAddItem(0, "[Ravenlord]", 682, 0);
	pUnit:GossipMenuAddItem(0, "[Swift White Hawkstrider]", 683, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Razzashi Raptor]", 684, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Zulian Tiger]", 685, 0);
	pUnit:GossipMenuAddItem(2, "[Albino Drake]", 686, 0);
	pUnit:GossipMenuAddItem(0, "[White Polar Bear]", 687, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 604) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Onyx Netherwing Drake]", 688, 0);
	pUnit:GossipMenuAddItem(2, "[Azure Netherwing Drake]", 689, 0);
	pUnit:GossipMenuAddItem(2, "[Veridian Netherwing Drake]", 690, 0);
	pUnit:GossipMenuAddItem(2, "[Purple Netherwing Drake]", 691, 0);
	pUnit:GossipMenuAddItem(2, "[Violet Netherwing Drake]", 692, 0);
	pUnit:GossipMenuAddItem(2, "[Cobalt Netherwing Drake]", 693, 0);
	pUnit:GossipMenuAddItem(2, "[Purple Riding Nether Ray]", 694, 0);
	pUnit:GossipMenuAddItem(2, "[Green Riding Nether Ray]", 695, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Riding Nether Ray]", 696, 0);
	pUnit:GossipMenuAddItem(2, "[Silver Riding Nether Ray]", 697, 0);
	pUnit:GossipMenuAddItem(2, "[Red Riding Nether Ray]", 698, 0);
	pUnit:GossipMenuAddItem(5, "[Next page >]", 592, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Onyx Netherwing Drake]", 688, 0);
	pUnit:GossipMenuAddItem(2, "[Azure Netherwing Drake]", 689, 0);
	pUnit:GossipMenuAddItem(2, "[Veridian Netherwing Drake]", 690, 0);
	pUnit:GossipMenuAddItem(2, "[Purple Netherwing Drake]", 691, 0);
	pUnit:GossipMenuAddItem(2, "[Violet Netherwing Drake]", 692, 0);
	pUnit:GossipMenuAddItem(2, "[Cobalt Netherwing Drake]", 693, 0);
	pUnit:GossipMenuAddItem(2, "[Purple Riding Nether Ray]", 694, 0);
	pUnit:GossipMenuAddItem(2, "[Green Riding Nether Ray]", 695, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Riding Nether Ray]", 696, 0);
	pUnit:GossipMenuAddItem(2, "[Silver Riding Nether Ray]", 697, 0);
	pUnit:GossipMenuAddItem(2, "[Red Riding Nether Ray]", 698, 0);
	pUnit:GossipMenuAddItem(5, "[Next page >]", 592, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 592) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Cenarion War Hippogryph]", 699, 0);
	pUnit:GossipMenuAddItem(2, "[Red Drake]", 704, 0);
	pUnit:GossipMenuAddItem(0, "[Ice Mammoth]", 700, 0);
	pUnit:GossipMenuAddItem(0, "[Grand Ice Mammoth]", 701, 0);
	pUnit:GossipMenuAddItem(0, "[Wooly Mammoth", 702, 0);
	pUnit:GossipMenuAddItem(0, "[Traveler's Tundra Mammoth", 703, 0);
	pUnit:GossipMenuAddItem(5, "[< Previous page]", 604, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Cenarion War Hippogryph]", 699, 0);
	pUnit:GossipMenuAddItem(2, "[Red Drake]", 704, 0);
	pUnit:GossipMenuAddItem(0, "[Ice Mammoth]", 700, 0);
	pUnit:GossipMenuAddItem(0, "[Grand Ice Mammoth]", 701, 0);
	pUnit:GossipMenuAddItem(0, "[Wooly Mammoth", 702, 0);
	pUnit:GossipMenuAddItem(0, "[Traveler's Tundra Mammoth", 703, 0);
	pUnit:GossipMenuAddItem(5, "[< Previous page]", 604, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 605) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "[Black Qiraji Resonating Crystal]", 705, 0);
	pUnit:GossipMenuAddItem(2, "[Magnificent Flying Carpet]", 706, 0);
	pUnit:GossipMenuAddItem(0, "[Chopper]", 707, 0);
	pUnit:GossipMenuAddItem(0, "[Big Battle Bear]", 708, 0);
	pUnit:GossipMenuAddItem(0, "[Riding Turtle]", 709, 0);
	pUnit:GossipMenuAddItem(2, "[X-51 Nether-Rocket X-TREME]", 710, 0);
	pUnit:GossipMenuAddItem(0, "[Big Blizzard Bear]", 711, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Zhevra]", 712, 0);
	pUnit:GossipMenuAddItem(0, "[Headless Horseman mount]", 713, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Brewfest Ram]", 714, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Brewfest Kodo]", 715, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "[Black Qiraji Resonating Crystal]", 705, 0);
	pUnit:GossipMenuAddItem(2, "[Magnificent Flying Carpet]", 706, 0);
	pUnit:GossipMenuAddItem(0, "[Chopper]", 707, 0);
	pUnit:GossipMenuAddItem(0, "[Big Battle Bear]", 708, 0);
	pUnit:GossipMenuAddItem(0, "[Riding Turtle]", 709, 0);
	pUnit:GossipMenuAddItem(2, "[X-51 Nether-Rocket X-TREME]", 710, 0);
	pUnit:GossipMenuAddItem(0, "[Big Blizzard Bear]", 711, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Zhevra]", 712, 0);
	pUnit:GossipMenuAddItem(0, "[Headless Horseman mount]", 713, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Brewfest Ram]", 714, 0);
	pUnit:GossipMenuAddItem(0, "[Swift Brewfest Kodo]", 715, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 606) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Green Proto-Drake]", 716, 0);
	pUnit:GossipMenuAddItem(2, "[Red Proto-Drake]", 717, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Proto-Drake]", 718, 0);
	pUnit:GossipMenuAddItem(2, "[Violet Proto-Drake]", 719, 0);
	pUnit:GossipMenuAddItem(2, "[Black Proto-Drake]", 720, 0);
	pUnit:GossipMenuAddItem(2, "[Plagued Proto-Drake]", 721, 0);
	pUnit:GossipMenuAddItem(2, "[Time-lost Proto-Drake]", 722, 0);
	pUnit:GossipMenuAddItem(2, "[Ashes of Al'ar]", 723, 0);
	pUnit:GossipMenuAddItem(2, "[Dragonhawk]", 724, 0);
	pUnit:GossipMenuAddItem(2, "[Onyxian Drake]", 751, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(2, "[Green Proto-Drake]", 716, 0);
	pUnit:GossipMenuAddItem(2, "[Red Proto-Drake]", 717, 0);
	pUnit:GossipMenuAddItem(2, "[Blue Proto-Drake]", 718, 0);
	pUnit:GossipMenuAddItem(2, "[Violet Proto-Drake]", 719, 0);
	pUnit:GossipMenuAddItem(2, "[Black Proto-Drake]", 720, 0);
	pUnit:GossipMenuAddItem(2, "[Plagued Proto-Drake]", 721, 0);
	pUnit:GossipMenuAddItem(2, "[Time-lost Proto-Drake]", 722, 0);
	pUnit:GossipMenuAddItem(2, "[Ashes of Al'ar]", 723, 0);
	pUnit:GossipMenuAddItem(2, "[Dragonhawk]", 724, 0);
	pUnit:GossipMenuAddItem(2, "[Onyxian Drake]", 751, 0);
	pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 739) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "[Rusted Proto-drake]", 752, 0);
pUnit:GossipMenuAddItem(2, "[Ironbound proto-drake]", 753, 0);
pUnit:GossipMenuAddItem(0, "[Sea Turtle]", 741, 0);
pUnit:GossipMenuAddItem(0, "[Magic Rooster]", 742, 0);
pUnit:GossipMenuAddItem(2, "[Argent Hippogryph]", 743, 0);
pUnit:GossipMenuAddItem(2, "[Silver Convent Hippogryph / Sunreaver Dragonhawk]", 744, 0);
pUnit:GossipMenuAddItem(2, "[Mimiron's Head]", 745, 0);
pUnit:GossipMenuAddItem(0, "[Crusader's Black Warhorse]", 746, 0);
pUnit:GossipMenuAddItem(0, "[Crusader's White Warhorse]", 747, 0);
pUnit:GossipMenuAddItem(0, "[Argent Warhorse]", 748, 0);
pUnit:GossipMenuAddItem(0, "[Alliance Steed / Horde Wolf]", 749, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 597, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 740) then
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(2, "[Rusted Proto-drake]", 752, 0);
pUnit:GossipMenuAddItem(2, "[Ironbound proto-drake]", 753, 0);
pUnit:GossipMenuAddItem(0, "[Sea Turtle]", 741, 0);
pUnit:GossipMenuAddItem(0, "[Magic Rooster]", 742, 0);
pUnit:GossipMenuAddItem(2, "[Argent Hippogryph]", 743, 0);
pUnit:GossipMenuAddItem(2, "[Silver Convent Hippogryph / Sunreaver Dragonhawk]", 744, 0);
pUnit:GossipMenuAddItem(2, "[Mimiron's Head]", 745, 0);
pUnit:GossipMenuAddItem(0, "[Crusader's Black Warhorse]", 746, 0);
pUnit:GossipMenuAddItem(0, "[Crusader's White Warhorse]", 747, 0);
pUnit:GossipMenuAddItem(0, "[Argent Warhorse]", 748, 0);
pUnit:GossipMenuAddItem(0, "[Alliance Steed / Horde Wolf]", 749, 0);
pUnit:GossipMenuAddItem(5, "I was looking for something else...", 598, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 610) then
pPlayer:LearnSpell(23227);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 611) then
pPlayer:LearnSpell(58819);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 612) then
pPlayer:LearnSpell(23228);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 613) then
pPlayer:LearnSpell(23338);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 614) then
pPlayer:LearnSpell(23219);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 615) then
pPlayer:LearnSpell(23221);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 616) then
pPlayer:LearnSpell(23238);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 617) then
pPlayer:LearnSpell(23239);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 618) then
pPlayer:LearnSpell(23240);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 619) then
pPlayer:LearnSpell(35713);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 620) then
pPlayer:LearnSpell(35712);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 621) then
pPlayer:LearnSpell(35714);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 622) then
pPlayer:LearnSpell(23225);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 623) then
pPlayer:LearnSpell(23223);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 624) then
pPlayer:LearnSpell(23222);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 600, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 625) then
pPlayer:LearnSpell(32242);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 601, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 626) then
pPlayer:LearnSpell(32290);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 601, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 627) then
pPlayer:LearnSpell(32292);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 601, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 628) then
pPlayer:LearnSpell(32289);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 601, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 629) then
pPlayer:LearnSpell(61229);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 601, 0);
pUnit:GossipSendMenu(pPlayer);
end


if(intid == 630) then
pPlayer:LearnSpell(22717);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 631) then
pPlayer:LearnSpell(22723);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 632) then
pPlayer:LearnSpell(22720);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 633) then
pPlayer:LearnSpell(48027);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 634) then
pPlayer:LearnSpell(22719);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 635) then
pPlayer:LearnSpell(23510);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 636) then
pPlayer:LearnSpell(59785);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 637) then
pPlayer:LearnSpell(39316);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 638) then
pPlayer:LearnSpell(34790);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 639) then
pPlayer:LearnSpell(60118);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 602, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 640) then
pPlayer:LearnSpell(17465);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 641) then
pPlayer:LearnSpell(23246);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 642) then
pPlayer:LearnSpell(23252);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 643) then
pPlayer:LearnSpell(23251);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 644) then
pPlayer:LearnSpell(23250);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 645) then
pPlayer:LearnSpell(23247);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 646) then
pPlayer:LearnSpell(23248);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 647) then
pPlayer:LearnSpell(23249);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 648) then
pPlayer:LearnSpell(23241);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 649) then
pPlayer:LearnSpell(23243);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 650) then
pPlayer:LearnSpell(23242);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 651) then
pPlayer:LearnSpell(33660);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 652) then
pPlayer:LearnSpell(35025);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 653) then
pPlayer:LearnSpell(35027);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 607, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 654) then
pPlayer:LearnSpell(32295);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 608, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 655) then
pPlayer:LearnSpell(32297);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 608, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 656) then
pPlayer:LearnSpell(32246);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 608, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 657) then
pPlayer:LearnSpell(32296);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 608, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 658) then
pPlayer:LearnSpell(61230);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 608, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 659) then
pPlayer:LearnSpell(22722);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 660) then
pPlayer:LearnSpell(22718);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 661) then
pPlayer:LearnSpell(22724);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 662) then
pPlayer:LearnSpell(22721);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 663) then
pPlayer:LearnSpell(35028);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 664) then
pPlayer:LearnSpell(23509);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 665) then
pPlayer:LearnSpell(59788);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 666) then
pPlayer:LearnSpell(39316);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 667) then
pPlayer:LearnSpell(34790);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 668) then
pPlayer:LearnSpell(60119);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 609, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 669) then
pPlayer:LearnSpell(37015);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 670) then
pPlayer:LearnSpell(44744);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 671) then
pPlayer:LearnSpell(49193);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 672) then
pPlayer:LearnSpell(58615);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 673) then
pPlayer:LearnSpell(43688);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 674) then
pPlayer:LearnSpell(17481);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 675) then
pPlayer:LearnSpell(36702);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 676) then
pPlayer:LearnSpell(59650);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 677) then
pPlayer:LearnSpell(59571);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 678) then
pPlayer:LearnSpell(59568);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 679) then
pPlayer:LearnSpell(59567);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end


if(intid == 680) then
pPlayer:LearnSpell(59569);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 681) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(61465);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(61467);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 682) then
pPlayer:LearnSpell(41252);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 683) then
pPlayer:LearnSpell(46628);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 684) then
pPlayer:LearnSpell(24242);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 685) then
pPlayer:LearnSpell(24252);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end


if(intid == 686) then
pPlayer:LearnSpell(60025);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 687) then
pPlayer:LearnSpell(54753);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 603, 0);
pUnit:GossipSendMenu(pPlayer);
end



if(intid == 688) then
pPlayer:LearnSpell(41513);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 689) then
pPlayer:LearnSpell(41514);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 690) then
pPlayer:LearnSpell(41517);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 691) then
pPlayer:LearnSpell(41516);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 692) then
pPlayer:LearnSpell(41518);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 693) then
pPlayer:LearnSpell(41515);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 694) then
pPlayer:LearnSpell(39801);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 695) then
pPlayer:LearnSpell(39798);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 696) then
pPlayer:LearnSpell(39803);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 697) then
pPlayer:LearnSpell(39802);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 698) then
pPlayer:LearnSpell(39800);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 604, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 699) then
pPlayer:LearnSpell(43927);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 700) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(59799);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(59797);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 701) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(61470);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(61469);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 702) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(59791);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(59793);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 703) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(61425);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(61447);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 704) then
pPlayer:LearnSpell(59570);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 592, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 705) then
pPlayer:LearnSpell(26656);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 706) then
pPlayer:LearnSpell(61309);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 707) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(60424);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(55531);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 708) then
pPlayer:LearnSpell(51412);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 709) then
pPlayer:LearnSpell(30174);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 710) then
pPlayer:LearnSpell(46199);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 711) then
pPlayer:LearnSpell(58983);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 712) then
pPlayer:LearnSpell(49322);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 713) then
pPlayer:LearnSpell(48025);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 714) then
pPlayer:LearnSpell(43900);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 715) then
pPlayer:LearnSpell(49379);
pUnit:GossipCreateMenu(72500, pPlayer, 0);
pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 605, 0);
pUnit:GossipSendMenu(pPlayer);
end

if(intid == 716) then
if pPlayer:HasSpell(61294) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(61294);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 717) then
if pPlayer:HasSpell(59961) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(59961);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 718) then
if pPlayer:HasSpell(59996) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(59996);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 719) then
if pPlayer:HasSpell(60024) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(60024);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 720) then
if pPlayer:HasSpell(59976) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(59976);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 721) then
if pPlayer:HasSpell(60021) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(60021);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 722) then
if pPlayer:HasSpell(60002) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(60002);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 723) then
if pPlayer:HasSpell(40192) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(40192);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 724) then
if pPlayer:HasSpell(61996) == false or pPlayer:HasSpell(61997) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		local race = pPlayer:GetPlayerRace();
		if race==1 or race==3 or race==4 or race==7 or race==11 then
			pPlayer:RemoveItem(MOUNTTOKEN, 1);
			pPlayer:LearnSpell(61996);
			pUnit:GossipCreateMenu(72500, pPlayer, 0);
			pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
			pUnit:GossipSendMenu(pPlayer);
			pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
		else
			pPlayer:RemoveItem(MOUNTTOKEN, 1);
			pPlayer:LearnSpell(61997);
			pUnit:GossipCreateMenu(72500, pPlayer, 0);
			pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
			pUnit:GossipSendMenu(pPlayer);
			pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
		end
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 741) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(64731);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(64731);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 742) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(65917);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(65917);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 743) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(63844);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(63844);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 744) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(66087);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(66088);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 745) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(63796);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(63796);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 746) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(68188);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(68188);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 747) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(68187);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(68187);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 748) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(67466);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(67466);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 749) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(68057);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(68056);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 750) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(64927);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(64927);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 599, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 751) then
if pPlayer:HasSpell(69395) == false then
	if pPlayer:HasItem(MOUNTTOKEN) == true then
		pPlayer:RemoveItem(MOUNTTOKEN, 1);
		pPlayer:LearnSpell(69395);
		pUnit:GossipCreateMenu(72500, pPlayer, 0);
		pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 606, 0);
		pUnit:GossipSendMenu(pPlayer);
		pUnit:SendChatMessage(12, 0, "Have fun with your mount!");
	else
		pPlayer:SendBroadcastMessage("You need a mount token to obtain this mount.");
		pPlayer:GossipComplete();
	end
else
	pPlayer:SendBroadcastMessage("You have this mount already.");
	pPlayer:GossipComplete();
end
end

if(intid == 752) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(63963);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(63963);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 753) then
local race = pPlayer:GetPlayerRace();
if race==1 or race==3 or race==4 or race==7 or race==11 then
	pPlayer:LearnSpell(63956);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 739, 0);
	pUnit:GossipSendMenu(pPlayer);
else
	pPlayer:LearnSpell(63956);
	pUnit:GossipCreateMenu(72500, pPlayer, 0);
	pUnit:GossipMenuAddItem(0, "I want to obtain some more mounts.", 740, 0);
	pUnit:GossipSendMenu(pPlayer);
end
end

if(intid == 596) then
pPlayer:GossipComplete();
end
end

RegisterUnitGossipEvent(45200, 1, MountVendor_OnGossip);
RegisterUnitGossipEvent(45200, 2, MountVendor_GossipSubmenus);
