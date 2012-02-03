local ReloadMessage = "#reload"
local Buffmessage = "#buff"
local Foodmessage = "#food"
local Healmessage = "#heal"
local Mallreturn = "#mall"
local Nudgeleftmessage = "#nudgeleft"
local Nudgerightmessage = "#nudgeright"
local Nudgebackmessage = "#nudgeback"
local Nudgeforwardmessage = "#nudgeforward"
local Commandlist = "#commands"
local GMCommandlist = "#gmcommands"
local Nudgeupmessage = "#nudgeup"
local Nudgedownmessage = "#nudgedown"
local gmerror = "You need to be a Game Master to access this Feature!"

local function OnChat(event, pPlayer, message, type, language)
	if message == ReloadMessage then
		if pPlayer:IsGm() == true then
			ReloadLuaEngine();
			pPlayer:SendAreaTriggerMessage("Lua HypArc Engine Successfully Reloaded!");
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end
	if (message == Buffmessage) then
		if (pPlayer:HasAura(25472) == false) then
			pPlayer:CastSpell(48162);
			pPlayer:CastSpell(42995);
			pPlayer:CastSpell(58499);
			pPlayer:CastSpell(43046);
			pPlayer:CastSpell(25472);
			pPlayer:SendBroadcastMessage("Enjoy your Buffs!");
		else
			pPlayer:SendAreaTriggerMessage("You already have buffs on, wait a while and try again.");

		end
		return 0
	end

	if (message == Foodmessage) then
		if pPlayer:IsInCombat() == false then
			pPlayer:AddItem(45932, 20);
			pPlayer:SendBroadcastMessage("You have been given 20x Black Jelly, Enjoy your Food!");
		else
			pPlayer:SendAreaTriggerMessage("You are currently in Combat!");
		end
		return 0
	end

	if (message == Healmessage) then
		if pPlayer:IsInCombat() == false then
			pPlayer:CastSpell(69693);
			pPlayer:SendBroadcastMessage("Your health has been restored.");
		else
			pPlayer:SendAreaTriggerMessage("You are currently in Combat!");
		end
		return 0
	end

	if (message == Mallreturn) then
		if pPlayer:IsInCombat() == false then
			pPlayer:Teleport(1, 16224.015625, 16265.496094, 13.209516);
		else
			pPlayer:SendAreaTriggerMessage("You are in Combat!");
		end
	end

	if (message == Nudgeleftmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX(), pPlayer:GetY()+5, pPlayer:GetZ());
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Nudgerightmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX(), pPlayer:GetY()-5, pPlayer:GetZ());
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Nudgebackmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX()-5, pPlayer:GetY(), pPlayer:GetZ());
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Nudgeforwardmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX()+5, pPlayer:GetY(), pPlayer:GetZ());
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Nudgeupmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX(), pPlayer:GetY(), pPlayer:GetZ()+5);
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Nudgedownmessage) then
		if pPlayer:IsGm() == true then
			pPlayer:Teleport(pPlayer:GetMapId(), pPlayer:GetX()+5, pPlayer:GetY(), pPlayer:GetZ()-5);
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end

	if (message == Commandlist) then
		if pPlayer:IsGm() == false then
			pPlayer:SendBroadcastMessage("player Commands = #buff - Gives you Buffs. #food - gives you food. #heal - Restores you too full Health. #mall - Teleports you to the Mall.");
		else
			pPlayer:SendBroadcastMessage("player Commands = #buff - Gives you Buffs. #food - gives you food. #heal - Restores you too full Health. #mall - Teleports you to the Mall.");
		end
		return 0
	end

	if (message == GMCommandlist) then
		if pPlayer:IsGm() == true then
			pPlayer:SendBroadcastMessage("GM Chat Commands = #jump - Jumps you 10yds up in the air. #nudgeleft - Nudges you 5yds left. #nudgeright - Nudges you 5yds right. #nudgeback - Nudges you 5yds behind. #nudgeforward - Nudges you 5yds forward.");
		else
			pPlayer:SendAreaTriggerMessage(""..gmerror.."");
		end
		return 0
	end
end

RegisterServerHook(16, OnChat);
