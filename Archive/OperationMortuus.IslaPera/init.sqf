enableSentences false;
enableRadio false;
enableSaving [false, false];

//Using ACRE2
[] execVM "include\acre2_compat.sqf";

// Fixing warning spam from ambientLife.
sleep 0.1;
enableEnvironment [true, true];