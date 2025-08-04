// Arsenal Version
_ArsenalVersion = "1.1.1";

// Create Arsenal
#define LOADOUT_ITEM(id,qty) [id, qty],
#define LOADOUT_MAG(id,qty,ammo) [id, qty, ammo],

#define BASIC_Medical \
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
    LOADOUT_ITEM("ACE_MapTools", 1) \
	LOADOUT_ITEM("ACRE_PRC343", 1) \
	LOADOUT_MAG("SmokeShell", 4,1) \
	LOADOUT_MAG("HandGrenade", 2,1) \
    LOADOUT_MAG("ACE_M84", 2,1)

#define BASIC_Pack \
	LOADOUT_ITEM("ACE_CableTie", 5) \
    LOADOUT_ITEM("ACE_EntrenchingTool", 1) \
	LOADOUT_ITEM("ACE_IR_Strobe_Item", 1) \
	LOADOUT_ITEM("ACE_wirecutter", 1) \
	LOADOUT_ITEM("ACE_SpraypaintGreen", 1) \
	LOADOUT_ITEM("ACE_microDAGR", 1) \
    LOADOUT_MAG("ACE_M14", 2,1)

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
_UID = getPlayerUID player;
player setUnitRecoilCoefficient 3.1; // Default Recoil

// Player Base Weapons & Equipment
_arsenalEquipment = _handgunWeaponShop;
_arsenalEquipment append _face;
_arsenalEquipment append _helmet;
_arsenalEquipment append _rtgBackpacks;
_arsenalEquipment append _misc;
_arsenalEquipment append _attach;
_arsenalEquipment append _uniform;
_arsenalEquipment append _vest;

// Base Loadout (Rifleman)
_gear = [["hlc_wp_SCARL_STD","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech_tan",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_30rnd_556_45",10,30]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_bodyBag",1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];

////////////////////
// Custom Equipment
////////////////////
if (_UID == "76561198203577376") then // Shrike
{
	_arsenalEquipment append ["shrikeHat", "shrike_crye", "shrikeBackpack", "shrikeRifle", "shrikeHat2", "rtg_f2000_Shrike", "rtg_shrike_m16a4"];
};

if (_UID == "76561198277000540") then // Soresp
{
	_arsenalEquipment append ["sorespHat"];
};

if (_UID == "76561198149973868") then // Cake
{
	_arsenalEquipment append ["cakeStrawHat", "cakeBackpack", "cakeHat2"];
};

if (_UID == "76561198084356818") then // Sal
{
	_arsenalEquipment append ["salBackpack", "rtg_sal_Launcher"];
};

if (_UID == "76561198011333529") then // Blade
{
	_arsenalEquipment append ["bladesBackpack", "bladeHat"];
};

if (_UID == "76561198995763722") then // Badger
{
	_arsenalEquipment append ["badgerVest", "badgerHat"];
};

if (_UID == "76561199069849585") then // Sam
{
	_arsenalEquipment append ["samHat"];
};

if (_UID == "76561198106526513") then // Pat
{
	_arsenalEquipment append ["patHat", "patVest", "patsBackpack", "rtg_pat_aug", "rtg_pat_aug_camo"];
};

if (_UID == "76561198365281706") then // Tex
{
	_arsenalEquipment append ["texHat", "texRifle"]; 
};

if (_UID == "76561198396315851") then // Fish
{
	_arsenalEquipment append ["fishPack", "rtg_vector_9mm_fish"];
};

if (_UID == "76561199180940475") then // Sparkles
{
	_arsenalEquipment append ["sparklesBackpack"];
};

if (_UID == "76561198121256045") then // Lynx
{
	_arsenalEquipment append ["lynxKitbag"];
};

if (_UID == "76561198178327959") then // Meep
{
	_arsenalEquipment append ["meepHat"];
};

if (_UID == "76561198017725120") then // Brewsky
{
	_arsenalEquipment append ["brewPack"];
};

if (_UID == "76561198033993505") then // Fizz
{
	_arsenalEquipment append ["fizzAlpineCarryAll", "fizzBlackCarryAll"];
};

if (_UID == "76561198023590068") then // Keba 
{
	_arsenalEquipment append ["kebaCarryAll_MCB", "kebaCarryAll_ALP", "kebaHat_Black", "kebaHat_Alpine"];
};

if (_UID == "76561199111760747") then // Torbs 
{
	_arsenalEquipment append ["torbsVest"];
};

if (_UID == "76561198983787879") then // Nugg
{
	_arsenalEquipment append ["rtg_nugg"];
};

if (_UID == "76561198106852162") then // Blue
{
	_arsenalEquipment append ["blueHat"];
};

if (_UID == "76561198832386481") then // CJ
{
	_arsenalEquipment append ["cjVest"];
};

if (_UID == "76561198290618087") then // Kim
{
	_arsenalEquipment append ["rtg_kimUniform"];
};

if (_UID == "76561198138541521") then // Ozzy
{
	_arsenalEquipment append ["ozzyBackpack"];
};
////////////////////
// Hitman
////////////////////
if (_role == "CMD") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_gear = [["hlc_wp_SCARL_CQC","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech_tan",["rtg_30rnd_556_45",30],[],""],[],["ptv_hk69","","","",["rhs_mag_M433_HEDP",1],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ACRE_PRC152_ID_2",1],["ACRE_PRC152_ID_3",1],["rtg_30rnd_556_45",10,30]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ACE_bodyBag",1],["ACE_HuntIR_monitor",1],["rhs_mag_M433_HEDP",20,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};

////////////////////
// Freelancer
////////////////////
if (_role == "SC") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_gear = [["hlc_wp_SCARL_CQC","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech_tan",["rtg_30rnd_556_45",30],[],""],[],["ptv_hk69","","","",["rhs_mag_M433_HEDP",1],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ACRE_PRC152_ID_2",1],["ACRE_PRC152_ID_3",1],["rtg_30rnd_556_45",10,30]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ACE_bodyBag",1],["ACE_HuntIR_monitor",1],["rhs_mag_M433_HEDP",20,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "TL") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _mrkOptics;
	_gear = [["ACWP_sr25_VFG","HLC_bipod_UTGShooters","ACE_DBAL_A3_Green","hlc_optic_ATACR",["rtg_20rnd_762x51",20],[],""],[],["ptv_hk69","","","",["rhs_mag_M433_HEDP",1],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ACRE_PRC152_ID_2",1],["ACRE_PRC152_ID_3",1],["rtg_20rnd_762x51",8,20]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ACE_bodyBag",1],["ACE_HuntIR_monitor",1],["rtg_20rnd_762x51",2,20],["rhs_mag_M433_HEDP",20,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "MED") then
{
	_arsenalEquipment append _med;
	_arsenalEquipment append _rifles;
	_gear = [["hlc_wp_SCARL_STD","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech_tan",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_30rnd_556_45",10,30]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_bloodIV_500",8],["ACE_bloodIV",4],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",9],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",10],["ACE_epinephrine",20],["kat_TXA",10],["kat_fentanyl",10],["kat_atropine",10],["kat_naloxone",10],["ACE_elasticBandage",40],["ACE_quikclot",40],["ACE_packingBandage",40],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",20],["ACE_morphine",10],["kat_chestSeal",10],["ACE_splint",6]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "AT") then
{
	_arsenalEquipment append _launcherWeaponOwned;
	_arsenalEquipment append _rifles;
	_gear = [["hlc_wp_SCARL_STD","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech_tan",["rtg_30rnd_556_45",30],[],""],["rtg_MRAWS_olive","","","",["rtg_MRAWS_HEAT_F",1],[],""],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_30rnd_556_45",10,30]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["rtg_MRAWS_HEAT_F",2,1],["rtg_MRAWS_HE_F",2,1],["rtg_MRAWS_SMK_F",3,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "MG") then
{
	_arsenalEquipment append _mgAmmo;
	_arsenalEquipment append _machineguns;
	player setUnitRecoilCoefficient 2.5; // MG Recoil
	_gear = [["ptv_m249_b","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_VSM_CarrierRig_Gunner_MultiCam",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_200rnd_556_45",2,200]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45_t",6,200]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "PM") then
{
	_arsenalEquipment append _eng;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _shotguns;
	_arsenalEquipment append _submachineguns;
	_gear = [["hlc_smg_mp5a3","muzzle_snds_L","","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_9mm_35Rnd_mag",10,35]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_wirecutter",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["MineDetector",1],["ToolKit",1],["rhsusf_m112_mag",6,1],["SatchelCharge_Remote_Mag",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "RFL") then
{
	_arsenalEquipment append _rifles;
};

////////////////////
// Firebrand
////////////////////
if (_role == "PLT") then
{
	_arsenalEquipment append _plt;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _med;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_gear = [["hlc_smg_mp5a3","muzzle_snds_L","","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_9mm_35Rnd_mag",10,35]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ToolKit",1],["ACE_bodyBag",1]]],"rhsusf_hgu56p_visor_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "DG") then
{
	_arsenalEquipment append _plt;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _med;
	_arsenalEquipment append _machineguns;
	_arsenalEquipment append _mgAmmo;
	player setUnitRecoilCoefficient 2.5; // MG Recoil
	_gear = [["ptv_m249_b","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_VSM_CarrierRig_Gunner_MultiCam",[BASIC_Vest ["ptv_15Rnd_9mm_P320",4,15],["rtg_200rnd_556_45",2,200]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ToolKit",1],["rtg_200rnd_556_45_t",6,200]]],"rhsusf_hgu56p_visor_mask_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};

// Load Arsenal
[player, _arsenalEquipment] call ace_arsenal_fnc_addVirtualItems;
player setUnitLoadout _gear;

// Hint
hint format ["Arsenals Created: %1, Version: %2", name player, _ArsenalVersion];
sleep 5;
hintSilent "";