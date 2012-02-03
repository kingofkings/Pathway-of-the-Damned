local playername;
local nameheal;

local type, string, table, rawget, rawset = type, string, table, rawget, rawset;
local old_players = {}
local mt = {
    __index = (function(t, k)
        local dat = rawget(t,k)
        if (not dat) then
            rawset(t, k, true)
            return nil
        end
        return dat
    end),
}
setmetatable(old_players, mt);

function Welcome_OnSpawn(pUnit, Event)
    pUnit:RegisterEvent(Welcome_Talk, 5000, 0);
	pUnit:RegisterEvent(Healer_Talk, 5000, 0);
end

function Welcome_Talk(pUnit, Event)
	player = pUnit:GetRandomPlayer(0)
	if (type(player) == "userdata") then
		if (pUnit:GetDistance(player) <= 900) then
			playername = player:GetName();
			if (not old_players[playername]) then
				pUnit:RegisterEvent("Welcome_FirstWelcome", 1000, 1);
				pUnit:RegisterEvent("Welcome_ThirdWelcome", 5000, 1);
			end
		end
	end
end

function Healer_Talk(pUnit,Event)
	healertarget = pUnit:GetRandomPlayer(0)
	if (type(healertarget) == "userdata") then
			if (pUnit:GetDistance(healertarget) <= 900) then
				if (healertarget:GetHealthPct() <= 75 and healertarget:GetHealthPct() > 1) then
						nameheal = healertarget:GetName();
							pUnit:RegisterEvent("Healer_Message1", 1000, 1);
					pUnit:FullCastSpellOnTarget(25840, healertarget);
				end
			end
	end
end

function Welcome_FirstWelcome(pUnit,Event)
	pUnit:SendChatMessage(12, 0, "This comes up alot: you are in phase two on GMisland to see the mall, this protects the island from map edits and other hacks. To get back to phase one(where most everything is spawned for the player-world) type \".char phase 1\".");
end

function Welcome_ThirdWelcome(pUnit,Event)

end

function Healer_Message1(pUnit,Event)
	pUnit:SendChatMessage(12, 0, "Heals incoming, "..nameheal.."!");
end

function GreetingNPC_Gossip(pUnit, event, player)
	pUnit:GossipCreateMenu(13500000, player, 0);
	pUnit:GossipSendMenu(player);
end


RegisterUnitGossipEvent(9999999, 1, "GreetingNPC_Gossip");
RegisterUnitEvent(9999999, 18, "Welcome_OnSpawn");
