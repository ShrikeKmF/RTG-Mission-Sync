/*/
File: keyInput.sqf
Author:

	S034
	
Last Modified:

	11/08/2019 A3 1.96 by S034
	
Description:

	PageUP/Down check
___________________________________________/*/
moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "
	if (_this select 1 == 201) then {
		_veh =vehicle player;
		if (_veh == player) exitWith {};
		if (!(_veh isKindOf 'helicopter')) exitWith {};
		if (driver _veh != player) exitWith {};
		hint 'Shorten Cargo Ropes';
		0 call Bh_fnc_slingLength;
	};
	if (_this select 1 == 209) then {
		_veh =vehicle player;
		if (_veh == player) exitWith {};
		if (!(_veh isKindOf 'helicopter')) exitWith {};
		if (driver _veh != player) exitWith {};
		hint 'Extend Cargo Ropes';
		1 call Bh_fnc_slingLength;
	};
"];