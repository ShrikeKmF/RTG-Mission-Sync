// RAVN
	case "std_ravn": {
		_veh addMagazineTurret ["20Rnd_m900a1_APFSDS", [0]];
		_veh addMagazineTurret ["12Rnd_M456A2_HEAT", [0]];
		_veh addMagazineTurret ["12Rnd_M456A2_HEAT", [0]];
		_veh addMagazineTurret ["8Rnd_M393A3_HE", [0]];
		_veh addMagazineTurret ["8Rnd_M393A3_HE", [0]];
		_veh addMagazineTurret ["8Rnd_M393A3_HE", [0]];
		_veh addMagazineTurret ["8Rnd_M393A3_HE", [0]];
		_veh addMagazineTurret ["rhs_mag_m416", [0]];
	};

// Rush
	case "std_rush": {
		[_veh, [1, "4Rnd_Stinger_AAM_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "4Rnd_Stinger_AAM_rightside_O", false, []]] remoteExec ["setPylonLoadout", _veh];
	};
	case "at_rush": {
		[_veh, [1, "2Rnd_Tow2B_AGM_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "2Rnd_Tow2B_AGM_rightside", false, []]] remoteExec ["setPylonLoadout", _veh];
		_veh removeMagazinesTurret ["300Rnd_30x113_M789_HEDT", [0]];
	};
	case "ai_rush": {
		[_veh, [1, "12Rnd_hydra_rockets_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "12Rnd_hydra_rockets_rightside_O", false, []]] remoteExec ["setPylonLoadout", _veh];
		_veh removeMagazinesTurret ["300Rnd_30x113_M789_HEDT", [0]];
	};	

// AMP
	case "std_amp": {
		[_veh, [1, "4Rnd_Stinger_AAM_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "4Rnd_Stinger_AAM_rightside_O", false, []]] remoteExec ["setPylonLoadout", _veh];
		_veh addMagazineTurret ["300Rnd_30x113_M789_HEDT", [0]];
	};
	case "at_amp": {
		[_veh, [1, "2Rnd_Tow2B_AGM_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "2Rnd_Tow2B_AGM_rightside", false, []]] remoteExec ["setPylonLoadout", _veh];
		_veh addMagazineTurret ["300Rnd_30x113_M789_HEDT", [0]];
	};
	case "ai_amp": {
		[_veh, [1, "12Rnd_hydra_rockets_O", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "12Rnd_hydra_rockets_rightside_O", false, []]] remoteExec ["setPylonLoadout", _veh];
		_veh addMagazineTurret ["300Rnd_30x113_M789_HEDT", [0]];
	};	

// Hawk
	case "AI_H": {
		[_veh, [1, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_F", [0]];
		_veh addMagazineTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_Yellow_F", [0]];
	};
	case "MXD_H": {
		[_veh, [1, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_F", [0]];
		_veh addMagazineTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_Yellow_F", [0]];
	};
	case "AT_H": {
		[_veh, [1, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "EF_PylonMissile_Titan_NLOS_2Rnd", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonRack_1Rnd_Missile_AA_04_F", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_F", [0]];
		_veh addMagazineTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_Yellow_F", [0]];
	};
	case "AA_H": {
		[_veh, [1, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonRack_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout"];
		[_veh, [4, "PylonRack_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "PylonRack_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_F", [0]];
		_veh addMagazineTurret ["1200Rnd_Gaitling_30mm_Heli_Attack_03_Yellow_F", [0]];
	};

// Sparrow
	case "AI_S": {
		[_veh, [1, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["ACE_500Rnd_20mm_shells_Comanche", [0]];
		_veh addMagazineTurret ["1000Rnd_20mm_shells_yellow", [0]];
	};
	case "MXD_S": {
		[_veh, [1, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		
		_veh removeMagazinesTurret ["ACE_500Rnd_20mm_shells_Comanche", [0]];
		_veh addMagazineTurret ["1000Rnd_20mm_shells_yellow", [0]];
	};
	case "AT_S": {
		[_veh, [1, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [4, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "PylonMissile_1Rnd_LG_scalpel", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["ACE_500Rnd_20mm_shells_Comanche", [0]];
		_veh addMagazineTurret ["1000Rnd_20mm_shells_yellow", [0]];
	};
	case "AA_S": {
		[_veh, [1, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [2, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [3, "PylonRack_19Rnd_missiles_olive_RF", false, []]] remoteExec ["setPylonLoadout"];
		[_veh, [4, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [5, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];
		[_veh, [6, "PylonMissile_1Rnd_AAA_missiles", false]] remoteExec ["setPylonLoadout", _veh];

		_veh removeMagazinesTurret ["ACE_500Rnd_20mm_shells_Comanche", [0]];
		_veh addMagazineTurret ["1000Rnd_20mm_shells_yellow", [0]];
	};
	default {};