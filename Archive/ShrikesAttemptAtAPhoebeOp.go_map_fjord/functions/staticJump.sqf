/* ----------------------------------------------------------------------------
Description: Performs static line jump. Saves loadout thence deletes backpack & adds a parachute, ejects unit, sets unit direction and velocity to match aircraft, opens equipped chute. Damage is disabled until on the ground, where the parachute is dropped, loadout is restored, and NV is turned back on if it was on.

Parameters: target aircraft, Player unit

Returns: none

Examples:
		[_target,_player] execVM "functions\staticJump.sqf";

Author: Vice

---------------------------------------------------------------------------- */

params ["_airVehicle","_unit"];

_unitLoadOut = getUnitLoadout _unit;
_unit setVariable ["loadoutBeforeJump",_unitLoadOut];

_gwh = "Weapon_Empty" createVehicle position _unit;
_unit action ["DropBag", _gwh, typeOf unitBackpack _unit];

_gwh attachTo [_unit,[0,0,-0.1],"pelvis"];


_gwh setVectorDirandUp [[-0.25,-1,0],[0,0,-1]];
_unit setVariable ["dummyJump",_gwh];
_unit allowDamage false;

_chute = "rhsusf_eject_Parachute_backpack";
_unit addBackPack _chute;

unassignVehicle _unit;
_unit action ["Eject", vehicle _unit];

_vel = velocity _airVehicle;
_dir = direction _airVehicle;

waitUntil {vehicle _unit == _unit};

_unit setDir (_dir  - 180);
_unit setVelocity _vel;

sleep 0.1;
_unit action ["OpenParachute", _unit];
	_vel = velocity _unit;
	_chute = vehicle _unit;
	_chute setVelocity _vel;

waitUntil {isTouchingGround _unit};

sleep 1;
_gwh = "Weapon_Empty" createVehicle position _unit; 
_unit action ["DropBag", _gwh, typeOf unitBackpack _unit];
_loadoutToRestore = _unit getVariable "loadoutBeforeJump";
_dummyToDelete = _unit getVariable "dummyJump";
deleteVehicle _dummyToDelete;
_nvON = currentVisionMode _unit;

_unit setUnitLoadout _loadoutToRestore;
if (_nvON == 1) then 
{
	_unit action ["nvGoggles", _unit];
};
_unit allowDamage true;