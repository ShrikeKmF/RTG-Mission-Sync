params ["_ctrl", "_selectedIndex"];
disableSerialization;

_display = uiNamespace getVariable "RoleSelectorDialog";
_roleList = _display displayCtrl 1501;

_roleList lbClear;

_roleSet = missionNamespace getVariable "currentRoleSet";
_roles = (_roleSet select _selectedIndex) select 1;

{
    _roleList lbAdd _x;
} forEach _roles;
