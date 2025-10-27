private _moduleVarName = "aiSkillVar";
private _moduleObj = missionNamespace getVariable _moduleVarName;

if (!isNull _moduleObj) then {
    private _training = _moduleObj getVariable ["Training", "DefaultValue"];

    diag_log format ["[fn_moduleAISkill] Training level = %1", _training];

    private _skillMap = [
        ["Green",         [0.55, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55]],
        ["Milita",        [0.64, 0.64, 0.64, 0.64, 0.64, 0.64, 0.64, 0.64]],
        ["Trained",       [0.73, 0.73, 0.73, 0.73, 0.73, 0.73, 0.73, 0.73]],
        ["Veteran",       [0.82, 0.82, 0.82, 0.82, 0.82, 0.82, 0.82, 0.82]],
        ["SpecialForces", [0.91, 0.91, 0.91, 0.91, 0.91, 0.91, 0.91, 0.91]]
    ];

    private _skills = (_skillMap select {
        _x select 0 isEqualTo _training
    }) param [0, ["", [0.511,0.511,0.511,0.522,0.511,0.511,0.511,0.5]]];
    _skills = _skills select 1;

    private _applySkill = {
        params ["_unit", "_skills"];
        if (!isNull _unit && {alive _unit} && {!isPlayer _unit}) then {
            _unit setSkill ["aimingAccuracy", _skills select 0];
            _unit setSkill ["aimingShake",    _skills select 1];
            _unit setSkill ["aimingSpeed",    _skills select 2];
            _unit setSkill ["spotDistance",   _skills select 3];
            _unit setSkill ["spotTime",       _skills select 4];
            _unit setSkill ["courage",        _skills select 5];
            _unit setSkill ["commanding",     _skills select 6];
            _unit setSkill ["general",        _skills select 7];
        };
    };

    // Initial AI list
    private _units = allUnits select {!isPlayer _x};
    missionNamespace setVariable ["aiSkillUnits", _units];

    {
        [_x, _skills] call _applySkill;
    } forEach _units;

    // Reapply every 5 minutes
    [] spawn {
        while {true} do {
            private _storedUnits = missionNamespace getVariable ["aiSkillUnits", []];
            private _newUnits = (allUnits select {!isPlayer _x}) - _storedUnits;

            // Add new units to the mission var
            if !(_newUnits isEqualTo []) then {
                missionNamespace setVariable [
                    "aiSkillUnits",
                    _storedUnits + _newUnits
                ];
                diag_log format ["[fn_moduleAISkill] Added %1 new AI units.", count _newUnits];
            };

            private _moduleObj = missionNamespace getVariable "aiSkillVar";
            if (isNull _moduleObj) exitWith {};
            private _training = _moduleObj getVariable ["Training", "DefaultValue"];

            private _skillMap = [
                ["Green",         [0.55, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55]],
                ["Milita",        [0.64, 0.64, 0.64, 0.64, 0.64, 0.64, 0.64, 0.64]],
                ["Trained",       [0.73, 0.73, 0.73, 0.73, 0.73, 0.73, 0.73, 0.73]],
                ["Veteran",       [0.82, 0.82, 0.82, 0.82, 0.82, 0.82, 0.82, 0.82]],
                ["SpecialForces", [0.91, 0.91, 0.91, 0.91, 0.91, 0.91, 0.91, 0.91]]
            ];

            private _skills = (_skillMap select {
                _x select 0 isEqualTo _training
            }) param [0, ["", [0.511,0.511,0.511,0.522,0.511,0.511,0.511,0.5]]];
            _skills = _skills select 1;

            // Apply to all known AI
            {
                [_x, _skills] call {
                    params ["_unit", "_skills"];
                    if (!isNull _unit && {alive _unit}) then {
                        _unit setSkill ["aimingAccuracy", _skills select 0];
                        _unit setSkill ["aimingShake",    _skills select 1];
                        _unit setSkill ["aimingSpeed",    _skills select 2];
                        _unit setSkill ["spotDistance",   _skills select 3];
                        _unit setSkill ["spotTime",       _skills select 4];
                        _unit setSkill ["courage",        _skills select 5];
                        _unit setSkill ["commanding",     _skills select 6];
                        _unit setSkill ["general",        _skills select 7];
                    };
                };
            } forEach (missionNamespace getVariable ["aiSkillUnits", []]);

            diag_log "[fn_moduleAISkill] Skills reapplied to all tracked AI units.";
            sleep 20; // 5 minutes
        };
    };
};
