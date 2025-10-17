params ["_kit"];
missionNamespace setVariable ["activeKit", _kit];

// Refresh list to disable unavailable roles
[] execVM "UI\RoleSelectUI\populateRoleList.sqf";
