enableSentences false;
enableRadio false;
enableSaving [false, false];

// Fixing warning spam from ambientLife.
sleep 0.1;
enableEnvironment [true, true];

execVM "functions\setAiSkill.h";