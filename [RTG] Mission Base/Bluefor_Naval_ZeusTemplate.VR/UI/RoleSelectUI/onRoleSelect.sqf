params ["_ctrl", "_index"];
disableSerialization;

_display = uiNamespace getVariable "RoleSelectorDialog";
_descBox = _display displayCtrl 1600;

// Get stored roles array
_selectedRoles = missionNamespace getVariable ["_selectedRolesArray", []];

// Safety check
if (count _selectedRoles == 0) exitWith {};

// Fetch the selected entry
_selected = _selectedRoles select _index;

// Skip headers
if (_selected select 2) exitWith { _descBox ctrlSetStructuredText parseText ""; };

// Extract data
_roleName = _selected select 0;
_desc     = _selected select 3;

// Update description box
_descBox ctrlSetStructuredText parseText format[
    "<t align='center' size='1.2'>%1</t><br/><t>%2</t>",
    _roleName, _desc
];

// Save temporary selection for confirm script
missionNamespace setVariable ["selectedRole", _selected];
