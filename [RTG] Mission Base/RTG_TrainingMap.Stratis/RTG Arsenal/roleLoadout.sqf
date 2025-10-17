#define LOADOUT_ITEM(id,qty) [id, qty],
#define LOADOUT_MAG(id,qty,ammo) [id, qty, ammo],

#define BASIC_UNIFORM \
	LOADOUT_ITEM("ACE_MapTools", 1) \
    LOADOUT_ITEM("ACE_elasticBandage", 15) \
    LOADOUT_ITEM("ACE_packingBandage", 15) \
    LOADOUT_ITEM("ACE_quikclot", 15) \
    LOADOUT_ITEM("ACE_tourniquet", 4) \
	LOADOUT_MAG("kat_Pervitin", 1, 8) \
    LOADOUT_MAG("kat_Painkiller", 2, 5) \
	LOADOUT_ITEM("ACE_Flashlight_XL50", 1) \
	LOADOUT_ITEM("ACE_IR_Strobe_Item", 1) \
	LOADOUT_ITEM("ACE_SpraypaintGreen", 1)
	

#define BASIC_Vest \
	LOADOUT_MAG("SmokeShell", 4,1) \
	LOADOUT_MAG("HandGrenade", 2,1) \
	LOADOUT_ITEM("ACE_microDAGR", 1) \
	LOADOUT_ITEM("ACE_CableTie", 8) \
	LOADOUT_ITEM("ACE_EntrenchingTool", 1) \
	LOADOUT_ITEM("iedd_item_notebook", 1) \
	LOADOUT_ITEM("KAT_ChemicalDetector", 1)

_gear = [
	["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_ACOG_black",["rtg_20Rnd_68x51",20],[],""],
	["rtg_m72a7_lat","","","",[],[],""],
	["JCA_hgun_P226_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
	["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
	["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
	["CTRG_Patrol_Arid",[["rtg_200rnd_556_45",5,200]]],
	"JCA_H_HelmetHBK_headset_olive_f","",
	["rtg_laserDesignator_tan_gh","","","","",[],""],
	["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
];

switch (_role) do {
	// Command and Support
	case "Team Leader": {
		_gear = [
			["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_30rnd_556_45",30],["1Rnd_HEDP_Grenade_shell",1],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_command_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_30rnd_556_45",7,30]]],
			["rtg_ANPRC155_olive_small",[["Laserbatteries",1,1],["1Rnd_HEDP_Grenade_shell",10,1],["1Rnd_SmokeRed_Grenade_Shell",5,1],["1Rnd_Smoke_Grenade_shell",10,1],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Medic": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_ACOG_black",["rtg_20Rnd_68x51",20],[],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["CTRG_JPC_medic_belt_arid",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["RTG_MedicalBackpack_OD",[["ACE_bloodIV_500",8],["ACE_bloodIV",4],["KAT_Empty_bloodIV_500", 4],["ACE_plasmaIV_500",2],["kat_Pulseoximeter",9],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",15],["kat_fentanyl",8],["kat_atropine",10],["kat_naloxone",10],["ACE_elasticBandage",30],["ACE_quikclot",30],["ACE_packingBandage",30],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",8],["ACE_morphine",14],["kat_chestSeal",6],["ACE_splint",4]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Crewman": {
		_gear = [
			["JCA_smg_MP5_VFG_olive_F","","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["JCA_30Rnd_9x19_MP5_FMJ_Mag",35],[],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_crew_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["JCA_30Rnd_9x19_MP5_FMJ_Mag",7,30]]],
			["rtg_ANPRC155_olive_small",[["ToolKit",1],["ACE_bodyBag",1],["ACE_bloodIV_500",4],["KAT_Empty_bloodIV_500", 2],["kat_Pulseoximeter",10],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",4],["kat_fentanyl",4],["kat_atropine",5],["kat_naloxone",5],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_packingBandage",20],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",5],["ACE_morphine",8],["kat_chestSeal",4],["ACE_splint",3]]],
			"H_HelmetCrew_I","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Pilot": {
		_gear = [
			["JCA_smg_MP5_VFG_olive_F","","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["JCA_30Rnd_9x19_MP5_FMJ_Mag",35],[],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_crew_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["JCA_30Rnd_9x19_MP5_FMJ_Mag",7,30]]],
			["rtg_ANPRC155_olive_small",[["ToolKit",1],["ACE_bodyBag",1],["ACE_bloodIV_500",4],["KAT_Empty_bloodIV_500", 2],["kat_Pulseoximeter",10],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",4],["kat_fentanyl",4],["kat_atropine",5],["kat_naloxone",5],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_packingBandage",20],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",5],["ACE_morphine",8],["kat_chestSeal",4],["ACE_splint",3]]],
			"H_PilotHelmetHeli_O_Visor_UP","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	// Direct Combat
	case "Rifleman": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_ACOG_black",["rtg_20Rnd_68x51",20],[],""],
			["JCA_Launch_M72_olive_F","","","",[],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["rtg_200rnd_556_45",5,200]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Light Rifleman": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_ACOG_black",["rtg_20Rnd_68x51",20],[],""],
			["JCA_Launch_M72_olive_F","","","",[],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["rtg_200rnd_556_45",5,200]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Pointman": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_ACOG_black",["rtg_20Rnd_68x51",20],[],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["rtg_200rnd_556_45",5,200],["MineDetector",1],["ACE_wirecutter",1],["ACE_DefusalKit",1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	// Fire Support
	case "Automatic Rifleman": {
		_gear = [
			["LMG_Mk200_Black_F","JCA_Muzzle_snds_762_tactical_Black","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_200Rnd_65x35",200],[],""],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_tactical_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_200Rnd_65x35",1,200]]],
			["CTRG_Patrol_Arid",[["rtg_200Rnd_65x35",6,200]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Grenadier": {
		_gear = [
			["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_30rnd_556_45",30],["1Rnd_HEDP_Grenade_shell",1],""],
			["twc_2inch_bag","","","",["twc_2inch_he_1rnd",1],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_heavy_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_30rnd_556_45",7,30]]],
			["CTRG_Patrol_Arid",[["Laserbatteries",1,1],["1Rnd_HEDP_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1],["twc_2inch_he_1rnd",10,1],["twc_2inch_smoke_1rnd",15,1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","",["Laserbatteries",1],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Rocket Grenadier": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_20Rnd_68x51",20],[],""],
			["Aegis_launch_RPG7M_F","","","",["RTG_RPG_Frag",1],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_heavy_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["RTG_RPG_Frag",6, 1], ["RTG_RPG_Smoke",4, 1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Combat Engineer": {
		_gear = [
			["JCA_smg_MP5_VFG_olive_F","","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["JCA_30Rnd_9x19_MP5_FMJ_Mag",35],[],""],
			["rtg_m72a7_lat","","","",[],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_30Rnd_9x19_MP5_FMJ_Mag",7,30],["JCA_15Rnd_9x21_M9a1_Mag",3,15]]],
			["CTRG_Patrol_Arid",[["ACE_Clacker",1],["MineDetector",1],["ACE_CTS9",6,1],["ACE_wirecutter",1],["ACE_DefusalKit",1],["tsp_breach_stick_mag",8,1],["rhsusf_m112_mag",4,1],["SLAMDirectionalMine_Wire_Mag",3,1],["tsp_breach_package_mag",2,1]]]
			,"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};

	// Specialist
	case "Medium Anti-Tank": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_20Rnd_68x51",20],[],""],
			["Launch_MRAWS_black_rail_F","","","",["rtg_MRAWS_HEAT_F",1],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["rtg_MRAWS_HEAT_F",2, 1], ["rtg_MRAWS_HE_F",2, 1], ["rtg_MRAWS_SMK_F",2, 1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Machine Gunner": {
		_gear = [
			["MMG_02_khaki_F","","","JCA_optic_ACOG_black",["rtg_100Rnd_338",100],[],"JCA_Bipod_04_black"],
			[],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_tactical_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15]]],
			["CTRG_Patrol_Arid",[["rtg_100Rnd_338",6,100]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","",[],[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};
	case "Heavy Anti-Tank": {
		_gear = [
			["ICM_XM7_F","ICM_SLX_Suppressor_F","ACE_DBAL_A3_Green","JCA_optic_AHO_black",["rtg_20Rnd_68x51",20],[],""],
			["launch_I_Titan_short_F","","","",["Titan_AT",1],[],""],
			["JCA_hgun_m9A1_black_F","","","",["JCA_15Rnd_9x21_M9a1_Mag",15],[],""],
			["CTRG_G3Field_Full_Arid",[BASIC_UNIFORM []]],
			["JCA_V_CarrierRigKBT_01_combat_olive_F",[BASIC_Vest ["JCA_15Rnd_9x21_M9a1_Mag",3,15],["rtg_20Rnd_68x51",7,20]]],
			["CTRG_Patrol_Arid",[["Titan_AT",2, 1]]],
			"JCA_H_HelmetHBK_headset_olive_f","",
			["Binocular","","","","",[],""],
			["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_NV_RTG_Armband_F"]
		];
		break;
	};

	default { };
};
player setUnitLoadout _gear;