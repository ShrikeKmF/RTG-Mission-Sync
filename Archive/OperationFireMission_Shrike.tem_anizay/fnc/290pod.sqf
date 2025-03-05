params ['_type'];
_vehicle = cameraOn;
if (!local _vehicle) exitWith {};
_slingLoad = getSlingLoad _vehicle;
_slingData = [_vehicle,_slingLoad] call (missionNamespace getVariable ['Bh_fnc_slingData',{}]);
_slingData params ['','','_attachEnabled','_attachCoordinates','_min','_max','_speed','_speedFast'];
_delta = 1;
_deltaSlow = 0.5;
_deltaFast = 2;
private _speedReal = _speed;
_minFast = _min + 5;
_maxFast = _max - 5;
private _ropeLength = 0;
if (_type == 0) then {
	if (!((ropes _vehicle) isEqualTo [])) then {
		if (!isNull _slingLoad) then {
			if (!(_slingLoad in (attachedObjects _vehicle))) then {
				private _attached = FALSE;
				_loadIntersected = !((lineIntersectsSurfaces [(getPosASL _slingLoad),((getPosASL _slingLoad) vectorAdd [0,0,5]),_slingLoad,objNull,TRUE,1,'GEOM','GEOM',TRUE]) isEqualTo []);
				{
					_ropeLength = ropeLength _x;
					if (_ropeLength > _min) then {
						_speedReal = [_speed,_speedFast] select ((_ropeLength > _minFast) && (_ropeLength < _maxFast));
						ropeUnwind [_x,_speedReal,-([([_delta,_deltaFast] select (_ropeLength > _maxFast)),_deltaSlow] select _loadIntersected),TRUE];
					} else {
						if (_attachEnabled) then {
							_attached = TRUE;
							_slingLoad attachTo [_vehicle,_attachCoordinates];
							50 cutText ['Attached','PLAIN DOWN',0.3];
							_vehicle disableCollisionWith _slingLoad;
							_slingLoad disableCollisionWith _vehicle;
						};
					};
					if (_attached) exitWith {};
				} forEach (ropes _vehicle);
				if (_attached) exitWith {
					_vehicle setVariable ['sling_attached',_slingLoad,TRUE];
					{
						ropeUnwind [_x,_speedReal,-([_delta,_deltaFast] select (_ropeLength > _minFast)),TRUE];
					} forEach (ropes _vehicle);
				};
			};
		};
	};
};
if (_type == 1 ) then {
	if (!((ropes _vehicle) isEqualTo [])) then {
		if (!isNull _slingLoad) then {
			if (!(_slingLoad in (attachedObjects _vehicle))) then {
				_isTouchingGround = isTouchingGround _vehicle;
				_loadIntersected = !((lineIntersectsSurfaces [(getPosASL _slingLoad),((getPosASL _slingLoad) vectorAdd [0,0,-5]),_slingLoad,objNull,TRUE,1,'GEOM','GEOM',TRUE]) isEqualTo []);
				{
					_ropeLength = ropeLength _x;
					if (_ropeLength < ([_max,10] select _isTouchingGround)) then {
						_speedReal = [_speed,_speedFast] select ((_ropeLength > _minFast) && (_ropeLength < _maxFast));
						ropeUnwind [_x,_speedReal,([([_delta,_deltaFast] select (_ropeLength < _maxFast)),_deltaSlow] select _loadIntersected),TRUE];
					};
				} forEach (ropes _vehicle);
			} else {
				// Check bounding box intersection here for obstructions
				_attachCoordinates set [2,((_attachCoordinates select 2) - ([1,0.1] select (isTouchingGround _vehicle)))];
				_slingLoad attachTo [_vehicle,_attachCoordinates];
				[_vehicle,_slingLoad,_slingData] spawn {
					params ['_vehicle','_slingLoad','_slingData'];
					_slingData params ['','','_attachEnabled','_attachCoordinates','_min','_max','_speed','_speedFast'];
					_vehicle disableCollisionWith _slingLoad;
					_slingLoad disableCollisionWith _vehicle;
					uiSleep 0.1;
					detach _slingLoad;
					50 cutText ['Detached','PLAIN DOWN',0.3];
					uiSleep 0.2;
					_vehicle enableCollisionWith _slingLoad;
					_slingLoad enableCollisionWith _vehicle;
					if (!((ropes _vehicle) isEqualTo [])) then {
						{
							ropeUnwind [_x,5,(_min + 0.1),FALSE];
						} forEach (ropes _vehicle);
					};
					_slingLoad2 = _vehicle getVariable ['sling_attached',objNull];
					if (!isNull _slingLoad2) then {
						if (_slingLoad2 in (attachedObjects _vehicle)) then {
							detach _slingLoad2;
							uiSleep 0.2;
							_vehicle enableCollisionWith _slingLoad2;
							_slingLoad2 enableCollisionWith _vehicle;
						};
					};
				};
				
			};
		};
	} else {
	
	};
};

