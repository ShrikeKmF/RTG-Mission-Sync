// Arsenal Version
_ArsenalVersion = "4.1.0";

// Create Arsenal
#define LOADOUT_ITEM(id,qty) [id, qty],
#define LOADOUT_MAG(id,qty,ammo) [id, qty, ammo],

#define BASIC_Medical \
	LOADOUT_ITEM("ACE_MapTools", 1) \
    LOADOUT_ITEM("ACE_elasticBandage", 25) \
    LOADOUT_ITEM("ACE_packingBandage", 25) \
    LOADOUT_ITEM("ACE_quikclot", 25) \
    LOADOUT_ITEM("ACE_morphine", 2) \
	LOADOUT_ITEM("kat_guedel", 2) \
    LOADOUT_ITEM("ACE_tourniquet", 4) \
	LOADOUT_MAG("kat_Pervitin", 2, 4) \
    LOADOUT_MAG("kat_Painkiller", 2, 5)

#define BASIC_Vest \
    LOADOUT_ITEM("ACE_Flashlight_XL50", 1) \
	LOADOUT_MAG("SmokeShell", 4,1) \
	LOADOUT_MAG("HandGrenade", 2,1) \
	LOADOUT_ITEM("ACE_microDAGR", 1)

#define BASIC_Pack \
	LOADOUT_ITEM("ACE_CableTie", 8) \
    LOADOUT_ITEM("ACE_EntrenchingTool", 1) \
	LOADOUT_ITEM("ACE_IR_Strobe_Item", 1) \
	LOADOUT_ITEM("ACE_SpraypaintGreen", 1) 


// File Includes
// Base Equipment
#include "arsenal\backpack.h";
#include "arsenal\uniform.h";
#include "arsenal\vest.h";
#include "arsenal\misc.h";
#include "arsenal\helmet.h";
#include "arsenal\tl.h";
#include "arsenal\med.h";
#include "arsenal\plt.h";
#include "arsenal\eng.h";
#include "arsenal\face.h";
#include "arsenal\recon.h";
#include "arsenal\attachments.h";
#include "arsenal\weapons\glWeapons.h";
#include "arsenal\weapons\handgunWeapons.h";
#include "arsenal\weapons\launcherWeapons.h";
#include "arsenal\weapons\mgWeapons.h";
#include "arsenal\weapons\weapons.h";

// Empty Arsenal
[player, true] call ace_arsenal_fnc_removeVirtualItems;

// Role Select
_role = _this select 0;
player setVariable ["role", _role];

_UID = getPlayerUID player;

// Player Base Weapons & Equipment
_arsenalEquipment = _handgunWeaponShop;
_arsenalEquipment append _face;
_arsenalEquipment append _helmet;
_arsenalEquipment append _misc;
_arsenalEquipment append _attach;
_arsenalEquipment append _uniform;
_arsenalEquipment append _vest;
_arsenalEquipment append _rtgBackpacks;

#include "arsenal\customequipment.h";
_gear = [
		["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
		["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack []]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","","",[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];

switch (_role) do {
	// Command and Support
	case "Team Leader": {
		_arsenalEquipment append _glWeaponShop;
		_arsenalEquipment append _gl_rifle;
		_arsenalEquipment append _gl_carbine;
		_arsenalEquipment append _glAmmo;
		_arsenalEquipment append _tl;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _mid_range_optics;
		_arsenalEquipment append _laserdesignators;

		_gear = [
			["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","rtg_ELCAN_3xSpectreDR",["rtg_30rnd_556_45",30],["ptv_1Rnd_HEDP_Grenade_shell",1],""],
			[],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor02_rgr",[BASIC_Vest ["ACE_HuntIR_monitor",1],["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
			["rtg_radiopack_black",[BASIC_Pack ["ACE_bodyBag",1],["Laserbatteries",1,1],["ptv_1Rnd_HEDP_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_Shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1]]],
			"rtg_ech_od","",
			["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Medic": {
		_arsenalEquipment append _tl;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _submachineguns;
		_arsenalEquipment append _short_range_optics;
		_arsenalEquipment append _med;

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
			[],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_radiopack_black",[BASIC_Pack ["ACE_bloodIV_500",8],["ACE_bloodIV",4],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",9],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",18],["kat_fentanyl",8],["kat_atropine",10],["kat_naloxone",10],["ACE_elasticBandage",36],["ACE_quikclot",36],["ACE_packingBandage",36],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",10],["ACE_morphine",16],["kat_chestSeal",8],["ACE_splint",5]]],
			"rtg_ech_od","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Crewman": {
		_arsenalEquipment append _tl;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _submachineguns;
		_arsenalEquipment append _short_range_optics;
		_arsenalEquipment append _eng;
		_arsenalEquipment append _laserdesignators;
		_arsenalEquipment append _med;

		_gear = [
			["JCA_smg_MP5_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_g3_mc",[BASIC_Medical []]],
			["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_9mm_35Rnd_mag",10,35]]],
			["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ToolKit",1],["ACE_bodyBag",1]]],
			"rtg_cvc_black","rhsusf_shemagh2_gogg_tan",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]
		];
		break;
	};
	case "Pilot": {
		_arsenalEquipment append _tl;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _submachineguns;
		_arsenalEquipment append _short_range_optics;
		_arsenalEquipment append _eng;
		_arsenalEquipment append _laserdesignators;
		_arsenalEquipment append _med;
		_arsenalEquipment append _plt;

		_gear = [
			["JCA_smg_MP5_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_g3_mc",[BASIC_Medical []]],
			["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_9mm_35Rnd_mag",10,35]]],
			["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ToolKit",1],["ACE_bodyBag",1]]],
			"rhsusf_hgu56p_visor_tan","rhsusf_shemagh2_gogg_tan",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]
		];
		break;
	};
	// Direct Combat
	case "Rifleman": {
		_arsenalEquipment append _LightLaunchers;
		_arsenalEquipment append _mgAmmo;
		_arsenalEquipment append _special_optics;
		_arsenalEquipment append _battlerifles;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _mid_range_optics;
		_arsenalEquipment append _laserdesignators;

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","rtg_ELCAN_3xSpectreDR",["rtg_30rnd_556_45",30],[],""],
			["rtg_m72a7_lat","","","",[],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45",5,200]]],
			"rtg_ech_od","",
			["rtg_laserDesignator_tan_gh","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Light Rifleman": {
		_arsenalEquipment append ["rhs_weap_fim92"];
		_arsenalEquipment append _LightLaunchers;
		_arsenalEquipment append _mgAmmo;
		_arsenalEquipment append _special_optics;
		_arsenalEquipment append _battlerifles;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _mid_range_optics;
		_arsenalEquipment append _laserdesignators;

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","rtg_ELCAN_3xSpectreDR",["rtg_30rnd_556_45",30],[],""],
			["rtg_m72a7_lat","","","",[],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45",5,200]]],
			"rtg_ech_od","",
			["rtg_laserDesignator_tan_gh","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Pointman": {
		_arsenalEquipment append _mgAmmo;
		_arsenalEquipment append _special_optics;
		_arsenalEquipment append _battlerifles;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _mid_range_optics;
		_arsenalEquipment append _laserdesignators;

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","rtg_ELCAN_3xSpectreDR",["rtg_30rnd_556_45",30],[],""],
			[],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45",5,200],["MineDetector",1],["ACE_wirecutter",1],["ACE_DefusalKit",1]]],
			"rtg_ech_od","",
			["rtg_laserDesignator_tan_gh","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	// Fire Support
	case "Automatic Rifleman": {
		_arsenalEquipment append _mgAmmo;
		_arsenalEquipment append _machineguns;
		_arsenalEquipment append _short_range_optics;

		_gear = [
			["rtg_ameli","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],"HLC_bipod_UTGShooters"],
			[],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_200rnd_556_45",2,200]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45_t",5,200]]],
			"rtg_ech_od","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]
		];
		break;
	};
	case "Grenadier": {
		_arsenalEquipment append _glWeaponShop;
		_arsenalEquipment append _gl_rifle;
		_arsenalEquipment append _gl_carbine;
		_arsenalEquipment append _glAmmo;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _short_range_optics;
		_arsenalEquipment append _2InchMortar;

		_gear = [
			["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],["ptv_1Rnd_HEDP_Grenade_shell",1],""],
			["twc_2inch_bag","","","",["twc_2inch_he_1rnd",1],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor02_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["ACE_bodyBag",1],["Laserbatteries",1,1],["ptv_1Rnd_HEDP_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1],["twc_2inch_he_1rnd",10,1],["twc_2inch_smoke_1rnd",15,1]]],
			"rtg_ech_od","",
			["Binocular","","","",["Laserbatteries",1],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Rocket Grenadier": {
		_arsenalEquipment append _RocketGrenadeLaunchers;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _short_range_optics;

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
			["rtg_pslr1_rpg7","","","",["rtg_rpg_hedp_mag",1],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_rpg_hedp_mag",6, 1], ["rtg_rpg_smk_mag",4, 1]]],
			"rtg_ech_od","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Combat Engineer": {
		_arsenalEquipment append _LightLaunchers;
		_arsenalEquipment append _eng;
		_arsenalEquipment append _shotguns;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _short_range_optics;

		_gear = [
			["RTG_M4A1_9_Black_F","","ACE_DBAL_A3_Green","acwp_t2",["rtg_9mm_35Rnd_mag",35],[],""],
			["rtg_m72a7_lat","","","",[],[],""],
			["acwp_glock17_black","","","",["ACWP_19Rnd_9x21_Mag_glock",19],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["rtg_9mm_35Rnd_mag",7,35],["ACWP_19Rnd_9x21_Mag_glock",4,19],["rhs_charge_tnt_x2_mag",2,1],["ACE_CTS9",6,1]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["ACE_Clacker",1],["MineDetector",1],["ACE_wirecutter",1],["ACE_DefusalKit",1],["tsp_breach_stick_mag",8,1],["rhsusf_m112_mag",4,1],["SLAMDirectionalMine_Wire_Mag",3,1],["tsp_breach_package_mag",2,1]]]
			,"rtg_ech_od","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};

	// Specialist
	case "Medium Anti-Tank": {
		_arsenalEquipment append _MediumLaunchers;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _short_range_optics;
		if (_UID == "76561198084356818") then // Sal
		{
			_arsenalEquipment append ["rtg_sal_Launcher"];
		};
		if (_UID == "76561199111760747") then // Torbs 
		{
			_arsenalEquipment append ["torbsVest"];
		};

		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
			["rtg_MRAWS_olive","","","",["rtg_MRAWS_HEAT_F",1],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_MRAWS_HEAT_F",3, 1], ["rtg_MRAWS_HE_F",2, 1], ["rtg_MRAWS_SMK_F",2, 1]]],
			"rtg_ech_od","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};
	case "Machine Gunner": {
		_arsenalEquipment append _mgAmmo;
		_arsenalEquipment append _mmg;
		_arsenalEquipment append _mid_range_optics;

		_gear = [
			["rtg_mag60_20_t3","","","rtg_ELCAN_3xSpectreDR",["rtg_200Rnd_762x51_t",100],[],""],
			[],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_200Rnd_762x51_t",2,100]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["rtg_200Rnd_762x51_t",5,100]]],
			"rtg_ech_od","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]
		];
		break;
	};
	case "Heavy Anti-Tank": {
		_arsenalEquipment append _HeavyLaunchers;
		_arsenalEquipment append _rifles;
		_arsenalEquipment append _carbines;
		_arsenalEquipment append _short_range_optics;
		_gear = [
			["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
			["launch_I_Titan_short_F","","","",["Titan_AT",1],[],""],
			["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
			["rtg_shirtcut_black_black",[BASIC_Medical []]],
			["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["Titan_AT",3, 1]]],
			"rtg_ech_od","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
		];
		break;
	};

	default { };
};

// Load Arsenal
[player, _arsenalEquipment] call ace_arsenal_fnc_addVirtualItems;
player setUnitLoadout _gear;

// Hint
hint format ["Arsenals Created: %1, Version: %2", name player, _ArsenalVersion];
sleep 5;
hintSilent "";

