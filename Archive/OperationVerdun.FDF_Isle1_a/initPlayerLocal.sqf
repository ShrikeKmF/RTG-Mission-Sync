ss say3D ["rtg_distantCombat_S", 7500, 1, 0, 0, true];

///////////////////////////////
// RTG Vehicle Spawners
///////////////////////////////
// Helicopters
_action = ["rtgHeliSpawn","Spawn Helicopter","", {}, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_Hawk", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnHawk","Hawk","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_Magpie", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnMagpie","Magpie","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;


_Statement = {
	_vehicle = createVehicle["rtg_sparrow", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnSparrow","Sparrow","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

// Cargo
_action = ["rtgBoxSpawn","Spawn Crate","", {}, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_BasicSupply", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnResupply","Resupply","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_atSupply", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnAntiTank","Anti-Tank","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_wheelsBox", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnWheels","Wheels","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["Box_NATO_AmmoVeh_F", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnVicAmmo","Vehicle Ammo","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["FlexibleTank_01_forest_F", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnFuel","Fuel Drum","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["B_Slingload_01_Repair_F", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnRepair","Repair Box","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[boxSpawner, 0, ["ACE_MainActions", "rtgBoxSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;




///////////////////////////////
// RTG Arsenals
///////////////////////////////
_role = "RFL"; // CMD, SC, TL, MED, AT, MG, PM, PLT, RFL

// Create Arsenal 
[_role] execVM "createArsenal.sqf";
_action = ["rtgArsenal","Open RTG Arsenal","",{[player, player, false] call ace_arsenal_fnc_openBox},{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

// Change Player Role
_action = ["rtgRole","Change Role","", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

// Teams
_action = ["rtgHitman","Command","", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["rtgFreelancer","Freelancer","", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["rtgFirebrand","Firebrand","", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["rtgRecon","Recon","", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole"], _action] call ace_interact_menu_fnc_addActionToClass;


// Hitman
// To CMD
_Statement = {
	_role = "CMD";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMD","Commander", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;
// To FO
_Statement = {
	_role = "FO";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToFO","Field Officer", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;
// To MED
_Statement = {
	_role = "PLTMED";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMDMED","Platoon Medic", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;
// To JTAC
_Statement = {
	_role = "JTAC";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToJTAC","Air Controller", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;

// To RFL
_Statement = {
	_role = "RFL";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMDRFL","Rifleman", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;



// Freelancer
// To SC
_Statement = {
	_role = "SC";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToSC","Section Commander", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;
// To MED
_Statement = {
	_role = "MED";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToMED","Medic", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;
// To PM
_Statement = {
	_role = "PM";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToPM","Pointman", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;
_Statement = {
	_role = "MG";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToMG","Machine Gunner", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;
// To RFL
_Statement = {
	_role = "RFL";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToRFL","Rifleman", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;

// Recon
// To RSC
_Statement = {
	_role = "RSC";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToReconSC","Recon Commander", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgRecon"], _action] call ace_interact_menu_fnc_addActionToClass;
// To MED
_Statement = {
	_role = "RMED";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToReconMED","Medic", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgRecon"], _action] call ace_interact_menu_fnc_addActionToClass;
// To RS
_Statement = {
	_role = "RS";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToReconPM","Recon Specalist", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgRecon"], _action] call ace_interact_menu_fnc_addActionToClass;

// Firebrand
// To PLT
_Statement = {
	_role = "PLT";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToPLT","Pilot", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFirebrand"], _action] call ace_interact_menu_fnc_addActionToClass;
// To Door Gunner
_Statement = {
	_role = "DG";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToDG","Door Gunner", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFirebrand"], _action] call ace_interact_menu_fnc_addActionToClass;
// To Lead PLT
_Statement = {
	_role = "PLT";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMDPLT","Lead Pilot", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFirebrand"], _action] call ace_interact_menu_fnc_addActionToClass;

///////////////////////////////
// Resupply with Limit and Check Action (Multiplayer Capable, Per Box)
///////////////////////////////

_Statement = {
    private _supplyBox = (_this select 0); // Reference to the supply box

    // Initialize resupply count for this box if not set
    if (isNil {_supplyBox getVariable "rtg_ResupplyCount"}) then {
        _supplyBox setVariable ["rtg_ResupplyCount", 0, true]; // Sync with all clients
    };

    private _loadout = player getVariable ["loadout", getUnitLoadout player];
    player setUnitLoadout _loadout;

    // Increment resupply count for this box
    if (isServer) then {
        private _currentCount = _supplyBox getVariable ["rtg_ResupplyCount", 0];
        _supplyBox setVariable ["rtg_ResupplyCount", _currentCount + 1, true];

        // Check if resupply limit is reached
        if ((_currentCount + 1) >= 15) then {
            deleteVehicle _supplyBox;
        };
    } else {
        // Request server to increment the count
        [
            {
                params ["_box"];
                private _currentCount = _box getVariable ["rtg_ResupplyCount", 0];
                _box setVariable ["rtg_ResupplyCount", _currentCount + 1, true];

                if ((_currentCount + 1) >= 15) then {
                    deleteVehicle _box;
                };
            }, [_supplyBox]
        ] remoteExec ["call", 2];
    };
};

// Action to resupply
_action = [
    "rtgResupply",
    "Resupply",
    "",
    _Statement,
    {true}
] call ace_interact_menu_fnc_createAction;

["rtg_BasicSupply", 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

// Action to check number of resupplies
_checkResupplies = {
    private _supplyBox = (_this select 0);
    private _currentCount = _supplyBox getVariable ["rtg_ResupplyCount", 0];
    hint format ["Resupplies used for this box: %1 / 15", _currentCount];
};

_checkAction = [
    "rtgCheckResupplies",
    "Check Resupplies",
    "",
    _checkResupplies,
    {true}
] call ace_interact_menu_fnc_createAction;

["rtg_BasicSupply", 0, ["ACE_MainActions"], _checkAction] call ace_interact_menu_fnc_addActionToClass;

///////////////////////////////
// General Scripts
///////////////////////////////
["All", "init", {
    params ["_vehicle"];

    _vehicle enableInfoPanelComponent ["left", "MineDetectorDisplay", false];
    _vehicle enableInfoPanelComponent ["right", "MineDetectorDisplay", false];
}, true, [], true] call CBA_fnc_addClassEventHandler;

player setVariable ["role", "RFL"];
private _loadout = getUnitLoadout player;
player setVariable ["TAG_StartLoadout", _loadout];

player addEventHandler ["Respawn", { private _loadout = player getVariable "TAG_StartLoadout"; if (!isNil "_loadout") then { player setUnitLoadout _loadout; }; }];

["ace_arsenal_displayClosed", {
    params ["_display"];
	clearRadio;	

	// TFAR 
	RTG_TFAR_SCRIBBLES_SETUP = { 
	
		private _role = player getVariable ["role", "RFL"]; 
		1 spawn {TFAR_fnc_requestRadios, true}; 
		
		[false, ["Platoon Net","Command-Net", "Tasking-Net", "Air-Net"]] call Rev_TFAR_fnc_setDefaultScribbles; 
		[true, ["Ares", "Fenrir", "Sabre", "Spare", "Hitman", "Platoon"]] call Rev_TFAR_fnc_setDefaultScribbles; 
	}; 
 
 
	private _setup = call RTG_TFAR_SCRIBBLES_SETUP; 
	systemChat str(_setup);
	
	// Loadout Verification
	// Set Points
	private _pSetpoint = 8; 
	private _sSetpoint = 5; 

    // Get the player's loadout
	private _isValid = true;
    private _loadout = getUnitLoadout player;
	player setVariable ["TAG_StartLoadout", _loadout];
	player setVariable ["loadout", _loadout];

    // Extract weapons and gear sections
    private _primaryWeapon = _loadout select 0; // Primary weapon and attachments
    private _secondaryWeapon = _loadout select 2; // Secondary weapon and attachments
    private _uniform = _loadout select 3; // Uniform and its contents
    private _vest = _loadout select 4; // Vest and its contents
    private _backpack = _loadout select 5; // Backpack and its contents

    // Get the magazine in the primary weapon
    private _primaryMag = _primaryWeapon select 4; // Magazine section of the primary weapon
    private _primaryMagClass = _primaryMag select 0; // Classname of the magazine in the primary weapon

    // Get the magazine in the secondary weapon
    private _secondaryMag = _secondaryWeapon select 4; // Magazine section of the secondary weapon
    private _secondaryMagClass = _secondaryMag select 0; // Classname of the magazine in the secondary weapon

    // Combine all inventory sources (uniform, vest, backpack)
    private _inventory = (_uniform select 1) + (_vest select 1) + (_backpack select 1);

	if (_secondaryMagClass == "" || _primaryMagClass == "") then
	{} else
	{
		// Function to count magazines in inventory
		private _countMagazines = {
			params ["_magClass", "_inventory"];
			private _count = 0;

			{
				if ((_x select 0) isEqualTo _magClass) then {
					_count = _count + (_x select 1); // Add magazine count
				};
			} forEach _inventory;

			_count
		};

		// Count primary and secondary magazines in the inventory
		private _primaryMagCount = [_primaryMagClass, _inventory] call _countMagazines;
		private _secondaryMagCount = [_secondaryMagClass, _inventory] call _countMagazines;

		
		if (_primaryMagCount > _pSetpoint) then
		{
			_isValid = false;
		};
		if (_secondaryMagCount > _sSetpoint) then
		{
			_isValid = false;
		};

		private _leader = leader group player;
		private _playerName = name player;


		if (!_isValid) then
		{
			systemChat "Inventory Invalid"; 
			private _message = format [
				"%1 Has Invalid Inventory Items:\n\nPrimary Magazine: %2\nCount: %3\n\nSecondary Magazine: %4\nCount: %5", 
				_playerName, 
				_primaryMagClass, 
				_primaryMagCount, 
				_secondaryMagClass, 
				_secondaryMagCount
			];
			[_message] remoteExec ["hintSilent", _leader]; 
		}	else
		{
			systemChat "Inventory Valid";
		};
	};
	
}] call CBA_fnc_addEventHandler;