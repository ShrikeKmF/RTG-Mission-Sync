enableSentences false;
enableRadio false;
enableSaving [false, false];

//Using ACRE2
[] execVM "include\acre2_compat.sqf";

// Fixing warning spam from ambientLife.
sleep 0.1;
enableEnvironment [true, true];
Bh_fnc_slingData = compile preprocessFileLineNumbers "fnc\fn_slingData.sqf";
Bh_fnc_slingLength = compile preprocessFileLineNumbers "fnc\290pod.sqf";

sleep 0.1;
playMusic ["rtg_intro", 0];
[] execVM "scripts\intro.sqf";
