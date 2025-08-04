///////////////////////////////
// RTG Vehicle Spawners
///////////////////////////////
// Helicopters
_action = ["rtgHeliSpawn","Spawn Helicopter","", {}, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_AH1Z_Hawk", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnHawk","Hawk","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_UH60M_Magpie", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnMagpie","Magpie","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_UH60M_MagpieDAP", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnMagpieDAP","MagpieDAP","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_heavyLift_Transport", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnPelican","Pelican (Transport)","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[heliSpawner, 0, ["ACE_MainActions", "rtgHeliSpawn"], _action] call ace_interact_menu_fnc_addActionToObject;

_Statement = {
	_vehicle = createVehicle["rtg_heavyLift_Cargo", getPosATL heliSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnPelicanCargo","Pelican (Cargo)","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
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
	_vehicle = createVehicle["rtg_medicalSupply", getPosATL boxSpawn];
	_vehicle setVariable ["BIS_enableRandomization", false];
};
_action = ["rtgSpawnMedical","Medical","", _Statement, {true}] call ace_interact_menu_fnc_createAction;
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


// Hitman
// To CMD
_Statement = {
	_role = "CMD";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMD","Commander", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;
// To MED
_Statement = {
	_role = "MED";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToCMDMED","Medic", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;
// To FO
_Statement = {
	_role = "TL";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToFO","Field Officer", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgHitman"], _action] call ace_interact_menu_fnc_addActionToClass;


// Freelancer
// To SC
_Statement = {
	_role = "SC";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToSC","Section Commander", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions", "rtgRole", "rtgFreelancer"], _action] call ace_interact_menu_fnc_addActionToClass;
// To TL
_Statement = {
	_role = "TL";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToTL","Team Leader", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
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
// To AT
_Statement = {
	_role = "AT";
	[_role] execVM "createArsenal.sqf";
};
_action = ["rtgToAT","Anti-Tank", "", _Statement,{true}] call ace_interact_menu_fnc_createAction;
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
// General Scripts
///////////////////////////////
["All", "init", {
    params ["_vehicle"];

    _vehicle enableInfoPanelComponent ["left", "MineDetectorDisplay", false];
    _vehicle enableInfoPanelComponent ["right", "MineDetectorDisplay", false];
}, true, [], true] call CBA_fnc_addClassEventHandler;

private _uid = getPlayerUID player;
[_uid] remoteExec ["fn_getPlayerData", 2];  // 2 indicates the server

[] spawn {
	waituntil {!isnull (finddisplay 46)};
	execVM "scripts\keyInput.sqf";
};