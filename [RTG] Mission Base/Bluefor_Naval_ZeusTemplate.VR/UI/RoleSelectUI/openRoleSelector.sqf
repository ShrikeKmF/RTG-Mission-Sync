missionNamespace setVariable ["activeKit", "Light_Kits"];
createDialog "RoleSelectorDialog";

[] execVM "UI\RoleSelectUI\populateRoleList.sqf";
