#include "..\..\arsenal\roles.h"

disableSerialization;
_display = uiNamespace getVariable "RoleSelectorDialog";
_list = _display displayCtrl 1500;

lbClear _list;

_activeKit = missionNamespace getVariable ["activeKit", "Light_Kits"];
_weapons = missionNamespace getVariable ["weaponsCheck", false];

_roleData = roleData;
if (_weapons) then {
    _roleData = roleDataWeapons;
} else {
    _roleData = roleData;
};


// Store full role data for list selection
_selectedRoles = [];

// Populate listbox
{
    _catName = _x select 0;
    _roles   = _x select 1;

    // Add header
    _headerIndex = _list lbAdd format["--- %1 ---", _catName];
    _list lbSetColor [_headerIndex, [0,0.7,1,1]];

    // Store header as special entry
    _selectedRoles pushBack [ _catName, [], true, "" ]; // true = header

    // Add roles
    {
        private _roleName = _x select 0;
        private _kits     = _x select 1;
        private _desc     = _x select 2;

        _idx = _list lbAdd format["   %1", _roleName];
        _list lbSetColor [_idx, if (_activeKit in _kits) then {[1,1,1,1]} else {[0.5,0.5,0.5,1]}];

        // Store full role info
        _selectedRoles pushBack [_roleName, _kits, false, _desc];
    } forEach _roles;

} forEach _roleData;

// Save array so onLBSelChanged can access
missionNamespace setVariable ["_selectedRolesArray", _selectedRoles];