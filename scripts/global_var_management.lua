
_globalvars_ = {};
_globalvars_["defCleanup"] = os.time();
_globalvars_["Garbage"] = {time=os.time(), memsize=nil};

math.randomseed(os.time());
math.random();
math.random();
math.random();
math.random();

local function setvars(pUnit, tblArgs)

	if (type(pUnit) ~= "userdata") then
		error("setvars arg 1 expecting userdata, got "..type(pUnit).."->"..tostring(pUnit), 2);
		return nil;
	elseif ((type(tblArgs) ~= "table") and (tblArgs == false)) then
		error("setvars arg 2 expecting table or boolean value true, got "..type(tblArgs).."->"..tostring(tblArgs), 2);
		return nil;
	end

	local do_garbagecollection = function(secs)
	if (type(_globalvars_.Garbage.time) ~= "number") then _globalvars_.Garbage.time = os.time(); return; end
	local crtTime = os.time();
	if ((crtTime - _globalvars_.Garbage.time) >= secs) then
		print("Performing garbage collection... ");
		_globalvars_.Garbage.time = crtTime;
		_globalvars_.Garbage.memsize = collectgarbage("count");
		collectgarbage("collect");
		print("Garbage Collected");
	end
	return;
end

local clean_table = function(secs)
if (table.getn(_globalvars_) >= 3) then
	local crtTime = os.time();
	local defCount = _globalvars_.defCleanup;
	if (math.abs((crtTime-defCount)) >= secs) then
		print("Performing clean up check for stale tables...");
		_globalvars_["defCleanup"] = os.time();
		for j, k in pairs(_globalvars_) do
			if ((k.tblaccTime ~= nil) and (k.tblaccTime ~= 0)) then
				local val = (crtTime - math.abs(k.tblaccTime));
				if (val >= secs) then
					print("setvars cleaned stale table->_globalvars_."..tostring(j)..": was "..tostring(val).." seconds old.");
					_globalvars_[j] = nil;
				end
			end
		end
	end
end
return;
end

local instance = tostring(pUnit:GetInstanceID());
local pUnit = tostring(pUnit);

if (instance == "nil") then
	if (tblArgs == true) then
		if (_globalvars_[pUnit] ~= nil) then _globalvars_[pUnit] = nil; end
		return;
	end
	_globalvars_[pUnit] = {tblaccTime=os.time(), args=tblArgs};
else
	if (tblArgs == true) then
		if (_globalvars_["instance "..instance] ~= nil) then _globalvars_["instance "..instance] = nil; end
		return;
	end
	_globalvars_["instance "..instance] = {tblaccTime=os.time(), args=tblArgs};
end

clean_table(5);
do_garbagecollection(5);
end

local function getvars(pUnit)
	if (type(pUnit) ~= "userdata") then
		error("getvars arg 1 expecting userdata, got "..type(pUnit).."->"..tostring(pUnit), 2);
		return nil;
	end

	local instance = tostring(pUnit:GetInstanceID());
	local pUnit = tostring(pUnit);

	if (instance == "nil") then
		if (_globalvars_[pUnit] == nil) then
			error("getvars attempting to get data from nonexistent table entry", 2);
			return nil;
		end
		_globalvars_[pUnit].tblaccTime=os.time();
		return _globalvars_[pUnit].args;
	else
		if (_globalvars_["instance "..instance] == nil) then
			error("getvars attempting to get data from nonexistent table entry", 2);
			return nil;
		end
		_globalvars_["instance "..instance].tblaccTime=os.time();
		return _globalvars_["instance "..instance].args;
	end

end
