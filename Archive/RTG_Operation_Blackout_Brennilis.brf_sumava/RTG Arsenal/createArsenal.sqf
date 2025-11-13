#include "version.h"
#include "Functions\map camo.h"

// Empty Arsenal
[player, true] call ace_arsenal_fnc_removeVirtualItems;

// Role Select
_role = "";
_role = _this select 0;
player setVariable ["role", _role];

#include "Arsenal Items\arsenal filter.h"


_UID = getPlayerUID player;

// Load Arsenal
[player, _filteredItems] call ace_arsenal_fnc_addVirtualItems;

// Load the base kit
#include "roleLoadout.sqf"

// Hint
hint format ["Arsenals Created: %1, Version: %2, Role: %3", name player, _ArsenalVersion, _role];
sleep 5;
hintSilent "";

