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

// Create Arsenal 
_action = ["rtgArsenal","Open RTG Arsenal","",{[player, player, false] call ace_arsenal_fnc_openBox},{true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

["Rifleman"] execVM "createArsenal.sqf";
missionNamespace setVariable ["selectedRole", ["Rifleman",    ["Medium_Kits", "Heavy_Kits"], "The Rifleman is the junior member of the section whose role is to provide an adaptable and flexible capability to the section to assist the more specialist roles by carrying additional ammo and LATs."]];


// Create action
_action = [
    "OpenRoleSelector",          // internal action ID
    "Open Role Selector",        // title shown in menu
    "",                          // icon ("" = none)
    { [] execVM "UI\RoleSelectUI\openRoleSelector.sqf"; },  // code on action
    { true }                     // condition (always true)
] call ace_interact_menu_fnc_createAction;

// Attach to supply crate (class)
["B_supplyCrate_F", 0, ["ACE_MainActions"], _action]
    call ace_interact_menu_fnc_addActionToClass;


///////////////////////////////
// Resupply System
///////////////////////////////

#define RESUPPLY_TIME 100
#define RESUPPLY_TIME_OUTSIDE 50


// always-available condition
private _resupplyCondition = {
    true
};

// the action: show a progress bar then call _Statement
private _resupplyAction = [
    "rtgResupply",                       // internal action name
    "Resupply",                          // menu text
    "",                                  // icon (none)
    {
        params ["_target","_unit"];
        // show progress; on complete, call your statement:
        ["Resupplying..", RESUPPLY_TIME, {}, 
            { // onComplete
                private _loadout = player getVariable ["loadout", getUnitLoadout player];
                player setUnitLoadout _loadout;
            }, 
            {} // no failure callback
        ] call CBA_fnc_progressBar;
    },
    _resupplyCondition                  // ready‑to‑use condition
] call ace_interact_menu_fnc_createAction;

private _resupplyActionOutside = [
    "rtgResupply",                       // internal action name
    "Resupply",                          // menu text
    "",                                  // icon (none)
    {
        params ["_target","_unit"];
        // show progress; on complete, call your statement:
        ["Resupplying...", RESUPPLY_TIME_OUTSIDE, {}, 
            { // onComplete
                private _loadout = player getVariable ["loadout", getUnitLoadout player];
                player setUnitLoadout _loadout;
            }, 
            {} // no failure callback
        ] call CBA_fnc_progressBar;
    },
    _resupplyCondition                  // ready‑to‑use condition
] call ace_interact_menu_fnc_createAction;

// Resupply Capable Vehicles/Objects
private _vehicleClasses = [
    "rtg_BasicSupply",
    "rtg_rush_shorad",
    "rtg_rush_IS",
	"rtg_lpb",
	"rtg_amp_m2",
	"rtg_amp_m2jav",
	"rtg_amp_shorad"
];

// add the action to each class
{
    [_x, 0, ["ACE_MainActions"], _resupplyActionOutside] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicleClasses;

{
    [_x, 1, ["ACE_SelfActions"], _resupplyAction] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicleClasses;

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
	"RoleArsenalHUD" cutText ["", "PLAIN"];

	// TFAR 
	RTG_TFAR_SCRIBBLES_SETUP = { 
	
		private _role = player getVariable ["role", "RFL"]; 
		1 spawn {TFAR_fnc_requestRadios, true}; 
		
		[false, ["Platoon Net","Command-Net", "Tasking-Net", "Air-Net"]] call Rev_TFAR_fnc_setDefaultScribbles; 
		[true, ["Ares", "Fenrir", "Sabre", "Misfit", "Raven", "Platoon", "Hitman"]] call Rev_TFAR_fnc_setDefaultScribbles; 
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

["ace_arsenal_displayOpened", {
    // Show the HUD
    "RoleArsenalHUD" cutRsc ["RoleArsenalHUD", "PLAIN"];

    [] spawn {
        uiSleep 0; // wait one frame for controls to exist
        private _display = uiNamespace getVariable ["RoleArsenalHUD", displayNull];
        if (!isNull _display) then {
            private _ctrl = _display displayCtrl 1801;

            // Get currently selected role
            private _selected = missionNamespace getVariable ["selectedRole", ["No Role Selected","","", ""]];
            private _roleName = _selected select 0; // use value directly, no str()

            // Update HUD
            _ctrl ctrlSetStructuredText parseText format [
                "<t align='right' size='1.2'>%1</t>",
                _roleName
            ];
        };
    };
}] call CBA_fnc_addEventHandler;


///////////////////////////////
// Static Line actions
// Edit the classname of the vehicle if you plane on changing the vic
///////////////////////////////

///////////////////////////////
// Static Line Base action
///////////////////////////////
_action = ["staticLine","Static Line","",{_player setVariable ['VC_UnitStanding',false,true];},{true}] call ace_interact_menu_fnc_createAction;
["RHS_C130J", 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;

///////////////////////////////
// Static Line Stand Up
///////////////////////////////
_Statement = {
	[_player] call VC_StaticLine_fnc_standUp;
};
_condition = {
	!(_player getVariable ['VC_UnitStanding',false])
};
_action = ["hookUp","Stand Up and Hook Up","",_Statement,_condition] call ace_interact_menu_fnc_createAction; 
["RHS_C130J", 1, ["ACE_SelfActions", "staticLine"], _action] call ace_interact_menu_fnc_addActionToClass;

///////////////////////////////
// Static Line Sit Down
///////////////////////////////
_Statement = {
	[_player] call VC_StaticLine_fnc_sitDown;
};
_condition = {
	(_player getVariable ['VC_UnitStanding',false])
};
_action = ["hookUp","Unhook and Sit Down","",_Statement,_condition] call ace_interact_menu_fnc_createAction; 
["RHS_C130J", 1, ["ACE_SelfActions", "staticLine"], _action] call ace_interact_menu_fnc_addActionToClass;

///////////////////////////////
// Static Line Jump
///////////////////////////////
_Statement = {
	[_target,_player] execVM "functions\staticJump.sqf";
};
_condition = {
	(_player getVariable ['VC_UnitStanding',false]) && (getPosATL _target) select 2 > 40
};
_action = ["jump","Jump","",_Statement, _condition] call ace_interact_menu_fnc_createAction;
["RHS_C130J", 1, ["ACE_SelfActions", "staticLine"], _action] call ace_interact_menu_fnc_addActionToClass;

// Spectator Settings
player setVariable ["AllowAi", false]; //Can the player view AI units
player setVariable ["AllowFreeCamera", false]; //Is free camera allowed
player setVariable ["Allow3PPCamera", true]; //Is third person camera allowed
player setVariable ["ShowFocusInfo", false]; //Will the focus info widget be shown if a player selects an entity
player setVariable ["ShowCameraButtons", true]; //Will camera buttons be shown. These allow to change camera mode, same as pressing "space". Keep in mind that these buttons overlap with the respawn UI
player setVariable ["ShowControlsHelper", true]; //Should control hints be shown. Be aware that pressing "F1" will not bring them up any longer if disabled
player setVariable ["ShowHeader", true]; //Should mission time be shown at the top
player setVariable ["ShowLists", true]; //Should entity and location lists be shown
player setVariable ["WhitelistedSides", ["WEST"]]; //Which sides can be watched

