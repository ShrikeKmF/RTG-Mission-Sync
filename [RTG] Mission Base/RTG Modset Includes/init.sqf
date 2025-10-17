enableSentences false;
enableRadio false;
enableSaving [false, false];

// Fixing warning spam from ambientLife.
sleep 0.1;
enableEnvironment [true, true];

execVM "functions\setAiSkill.h";
fnc_spawnVehicle = compile preprocessFileLineNumbers "UI\fnc_spawnVehicle.sqf";

// Vehicle Spawn Lists
VEHICLE_LIST = [
    [
        "RHIB (Fast)", "raider_fast_rhib",
        [
            ["Standard", "Rhib"]
        ]
    ],
    [
        "Supply Crate", "rtg_BasicSupply",
        [
            ["Standard", "BSup"]
        ]
    ],
    [
        "Wheels Crate", "rtg_wheelsBox",
        [
            ["Standard", "WSUP"]
        ]
    ],
	[
        "Bugy", "rtg_bugy",
        [
            ["Standard", "bugy"]
        ]
    ],
	[
        "HTC", "rtg_htc_l",
        [
            ["Standard", "htc"]
        ]
    ],
	[
        "LPB", "rtg_lpb",
        [
            ["Standard", "lpb"]
        ]
    ],
    [
        "RUSH Command", "rtg_rush_shorad",
        [
            ["Standard", "std_rush"],
			["Anti-Tank", "at_rush"],
			["Anti-Infantry", "ai_rush"]
        ]
    ],
	[
        "RUSH IS", "rtg_rush_is",
        [
            ["Standard", "rush_is"]
        ]
    ],
	[
        "AMP M2", "rtg_amp_m2",
        [
            ["Standard", "amp_m2"]
        ]
    ],
    [
        "AMP RWS M2/JAV", "rtg_amp_m2jav",
        [
            ["Standard", "amp_m2jav"]
        ]
    ],
	[
        "AMP Command", "rtg_amp_shorad",
        [
            ["Standard", "std_amp"],
			["Anti-Tank", "at_amp"],
			["Anti-Infantry", "ai_amp"]
        ]
    ],
	[
        "RAVN", "rtg_ravn",
        [
            ["Standard", "std_ravn"]
        ]
    ],
	[
        "Magpie", "RTG_B_Magpie",
        [
            ["Standard", "magpie"]
        ]
    ],
    [
        "Hawk", "RTG_B_Hawk",
        [
            ["Anti-Infantry", "AI_H"],
			["Mixed", "MXD_H"],
			["Anti-Tank", "AT_H"],
			["Anti-Air", "AA_H"]
        ]
    ],
    [
        "Sparrow", "RTG_B_Sparrow_L",
        [
			["Anti-Infantry", "AI_S"],
			["Mixed", "MXD_S"],
			["Anti-Tank", "AT_S"],
			["Anti-Air", "AA_S"]
        ]
    ]
];

SPAWN_POINTS = [
    ["Crate Spawn", "boxSpawn"],
    ["Helipad 1", "heliSpawn_1"],
    ["Helipad 2", "heliSpawn_2"],
    ["Helipad 3", "heliSpawn_3"],
    ["Vehicle Bay 1", "vehicle_spawn"],
    ["Vehicle Bay 2", "vehicle_spawn_2"],
    ["Vehicle Bay 3", "vehicle_spawn_3"]
];
