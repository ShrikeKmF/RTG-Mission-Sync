_display = uiNamespace getVariable "RoleSelectorDialog";
_list    = _display displayCtrl 1500;

// Get currently selected role
_idx = lbCurSel _list;
_selectedRoles = missionNamespace getVariable ["_selectedRolesArray", []];

// Check nothing selected
if (count _selectedRoles == 0) exitWith { hint "No role selected!"; };

// Get selected entry
_selected = _selectedRoles select _idx;

// Ignore headers
if (_selected select 2) exitWith { hint "Please select a role, not a header!"; };

// Role info
_roleName = _selected select 0;
_kits     = _selected select 1;
_desc     = _selected select 3;

// Check if active kit matches
_activeKit = missionNamespace getVariable ["activeKit", "Light_Kits"];
if !(_activeKit in _kits) exitWith { hint format ["%1 is not available in the selected kit set!", _roleName]; };

// Execute role assignment (replace with your arsenal logic)
[_roleName] execVM "createArsenal.sqf";

// Close dialog
closeDialog 0;
