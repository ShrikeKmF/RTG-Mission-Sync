private _moduleVarName = "aiSkillVar";

private _moduleObj = missionNamespace getVariable _moduleVarName; 
 
if (!isNull _moduleObj) then { 
    // Example: getting a module attribute called "rtgModuleAISkill_Training" 
    private _training = _moduleObj getVariable ["Training", "DefaultValue"]; 

	diag_log format ["fn_moduleAISkill: Training level = %1", _training];


	// Map training levels to skill values
	// [aimingAccuracy, aimingShake, aimingSpeed, spotDistance, spotTime, courage, commanding, general]
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

	// function to apply skill array to a unit
	private _applySkill = {
		params ["_unit", "_skills"];
		_unit setSkill ["aimingAccuracy", _skills select 0];
		_unit setSkill ["aimingShake",    _skills select 1];
		_unit setSkill ["aimingSpeed",    _skills select 2];
		_unit setSkill ["spotDistance",   _skills select 3];
		_unit setSkill ["spotTime",       _skills select 4];
		_unit setSkill ["courage",        _skills select 5];
		_unit setSkill ["commanding",     _skills select 6];
		_unit setSkill ["general",        _skills select 7];
	};

	// Set all current units' skill
	{
		[_x, _skills] call _applySkill;
	} forEach allUnits;
};

