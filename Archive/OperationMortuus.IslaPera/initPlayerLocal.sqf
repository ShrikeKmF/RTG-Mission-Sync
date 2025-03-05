///////////////////////////////
// General Scripts
///////////////////////////////
["All", "init", {
    params ["_vehicle"];

    _vehicle enableInfoPanelComponent ["left", "MineDetectorDisplay", false];
    _vehicle enableInfoPanelComponent ["right", "MineDetectorDisplay", false];
}, true, [], true] call CBA_fnc_addClassEventHandler;

private _uid = getPlayerUID player;
[_uid] remoteExec ["fn_getPlayerData", 2];  // 2 indicates the server
