//////////////////////
// Radios
//////////////////////

#define PROGRAM_CHANNEL(RADIO, CHANNEL, LABEL, RX, TX) \
[RADIO, _presetId, CHANNEL, "label", LABEL] call acre_api_fnc_setPresetChannelField; \
[RADIO, _presetId, CHANNEL, "frequencyRX", RX] call acre_api_fnc_setPresetChannelField; \
[RADIO, _presetId, CHANNEL, "frequencyTX", RX] call acre_api_fnc_setPresetChannelField;

[false, false] call acre_api_fnc_setupMission;

_presetId = "RTG";

["ACRE_PRC152", "default", _presetId] call acre_api_fnc_copyPreset;
PROGRAM_CHANNEL("ACRE_PRC152", 1, "PLATOON NET", 42, 42)
PROGRAM_CHANNEL("ACRE_PRC152", 2, "COMMAND NET", 31.9, 31.9)
PROGRAM_CHANNEL("ACRE_PRC152", 3, "INTERNAL AIR NET", 60.9, 60.9)
PROGRAM_CHANNEL("ACRE_PRC152", 4, "TASKING ONE", 75.3, 75.3)
PROGRAM_CHANNEL("ACRE_PRC152", 5, "TASKING TWO", 79.3, 79.3)

["ACRE_PRC152", _presetId] call acre_api_fnc_setPreset;

["ACRE_PRC117F", "default", _presetId] call acre_api_fnc_copyPreset;
PROGRAM_CHANNEL("ACRE_PRC117F", 1, "COMMAND", 595.5, 595.5)
PROGRAM_CHANNEL("ACRE_PRC117F", 2, "AIR", 391.9, 391.9)
["ACRE_PRC117F", _presetId] call acre_api_fnc_setPreset;


//////////////////////
// Translator
//////////////////////

call {
	["e", "English"] call acre_api_fnc_babelAddLanguageType;
	["f", "Forien"] call acre_api_fnc_babelAddLanguageType;

	_languagesPlayerSpeaks = ["e"];

	_zeus = [
		"B_officer_F"
	];

	_type = typeOf player;
	if(_type in _zeus) then {
		_languagesPlayerSpeaks = _languagesPlayerSpeaks + ["f"];
	};

	_languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
};