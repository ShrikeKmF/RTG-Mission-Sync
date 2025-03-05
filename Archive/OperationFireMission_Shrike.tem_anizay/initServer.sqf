// Structure
// PlayerData
// UID
// Kills 
// Deaths 
// Money

fn_setPlayerData = {
    params ["_playerData"];

    // Extract data from the array
    _uid = _playerData select 0;
    _kills = _playerData select 1;
    _deaths = _playerData select 2;
    _money = _playerData select 3;
	_torbsawards = _playerData select 4;

	
   	_inidbi = ["new", _uid] call OO_INIDBI;

    // Write data to the INIDBI2 database
	["write", ["PlayerData", "UID", _uid]] call _inidbi;
    ["write", ["PlayerData", "Kills", _kills]] call _inidbi;
    ["write", ["PlayerData", "Deaths", _deaths]] call _inidbi;
    ["write", ["PlayerData", "Money", _money]] call _inidbi;
	["write", ["PlayerData", "TorbsAwards", _torbsawards]] call _inidbi;

    true
};

fn_getPlayerData = {
	params ["_UID"];

	_inidbi = ["new", _UID] call OO_INIDBI;

	_Kills = 0;
	_Deaths = 0;
	_Money = 0;
	_torbsawards = 0;

    _UIDTest = ["read", ["PlayerData", "UID"]] call _inidbi;
    

	if (typeName _UIDTest == "BOOL") then 
	{
		[[_UID, _Kills, _Deaths, _Money, _torbsawards]] call fn_setPlayerData;
	} else
	{
		_Kills = ["read", ["PlayerData", "Kills"]] call _inidbi;
		_Deaths = ["read", ["PlayerData", "Deaths"]] call _inidbi;
    	_Money = ["read", ["PlayerData", "Money"]] call _inidbi;
		_torbsawards = ["read", ["PlayerData", "TorbsAwards"]] call _inidbi;
	};

	

	_playerData = [_UID, _Kills, _Deaths, _Money, _torbsawards];

	_playerData
};

// Event handler for player respawn (death)
player addMPEventHandler ["MPRespawn", {
    params ["_unit", "_corpse"];
    if (isServer) then {
        private _uid = getPlayerUID _unit;
        
        // Fetch player data from the database
        private _playerData = [_uid] call fn_getPlayerData;
        
        // Increment deaths count
        private _deaths = ((_playerData select 2) + 1);
        _playerData set [2, _deaths];
        
        // Update player data in the database
        [_playerData] call fn_setPlayerData;
    };
}];

// Event handler for player kill
addMissionEventHandler ["EntityKilled", {
    params ["_unit", "_killer"];
    if (isServer && {isPlayer _killer} && {vehicle _killer == _killer} && {!(_killer isEqualTo _unit)}) then {
        private _uid = getPlayerUID _killer;
        
        // Fetch player data from the database
        private _playerData = [_uid] call fn_getPlayerData;
        
        // Increment kills count and update money
        private _kills = ((_playerData select 1) + 1);
        private _money = ((_playerData select 3) + floor(random 16 + 5)); // Random money between 5 and 20
        _playerData set [1, _kills];
        _playerData set [3, _money];

		if ((side _unit) isEqualTo west) then
		{
			private _torbsawards = ((_playerData select 4) + 1);
        	_playerData set [4, _torbsawards];
		};
        
        // Update player data in the database
        [_playerData] call fn_setPlayerData;
    };
}];
