// toggleWeapons.sqf
private _display = uiNamespace getVariable 'RoleSelectorDialog';
if (isNil '_display') exitWith {};

private _btn      = _display displayCtrl 3000;
private _heavyBtn = _display displayCtrl 2002;

// toggle weapons squad
private _weapons = !(missionNamespace getVariable ['weaponsCheck', false]);
missionNamespace setVariable ['weaponsCheck', _weapons];

// update button text
_btn ctrlSetText format ['Weapons: %1', if (_weapons) then {'ON'} else {'OFF'}];

// disable or enable Heavy button
_heavyBtn ctrlEnable !(_weapons);

// refresh role list
[] execVM 'UI\RoleSelectUI\populateRoleList.sqf';
