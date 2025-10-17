private _disp = findDisplay 8000;
private _vehCtrl = _disp displayCtrl 8001;
private _spawnCtrl = _disp displayCtrl 8002;
private _loadCtrl = _disp displayCtrl 8003;

private _vehInfo = call compile (_vehCtrl lbData (lbCurSel _vehCtrl));
private _vehClass = _vehInfo select 1;
private _spawnObjName = _spawnCtrl lbData (lbCurSel _spawnCtrl);
private _loadType = _loadCtrl lbData (lbCurSel _loadCtrl);

private _spawnObj = missionNamespace getVariable [_spawnObjName, objNull];
if (isNull _spawnObj) exitWith { hint "Invalid spawn object."; };

private _pos = getPosATL _spawnObj;
private _veh = createVehicle [_vehClass, _pos, [], 0, "NONE"];

//  vehicle setPylonLoadout [pylon, magazine, forced, turret]
switch (_loadType) do {
    #include "Vehicle Loadouts.h"
};

hint format ["Spawned %1 at %2 with %3 loadout", _vehClass, _spawnObjName, _loadType];
closeDialog 0;
