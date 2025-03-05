// Arsenal Version
_ArsenalVersion = "2.0.1";

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
	LOADOUT_ITEM("ACE_microDAGR", 1) \
    LOADOUT_MAG("ACE_M84", 2,1)

#define BASIC_Pack \
	LOADOUT_ITEM("ACE_CableTie", 5) \
    LOADOUT_ITEM("ACE_EntrenchingTool", 1) \
	LOADOUT_ITEM("ACE_IR_Strobe_Item", 1) \
	LOADOUT_ITEM("ACE_wirecutter", 1) \
	LOADOUT_ITEM("ACE_SpraypaintGreen", 1) \
    LOADOUT_MAG("ACE_M14", 2,1)


#define SUPPORT_GL_LOADOUT \
	LOADOUT_MAG("1Rnd_Smoke_Grenade_shell", 10, 1) \
	LOADOUT_MAG("ACE_HuntIR_M203", 2, 1)


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
player setVariable ["role", _role];

_UID = getPlayerUID player;
player setUnitRecoilCoefficient 2.4; // Default Recoil

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
_gear = [["JCA_arifle_M4A4_VFG_black_F","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_bodyBag",1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];


#include "arsenal\customequipment.h";

////////////////////
// Hitman
////////////////////
if (_role == "CMD") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _glSupportAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _eng;
	_arsenalEquipment append _mrkOptics;
	_gear = [["JCA_arifle_M4A4_GL_black_F","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],["rtg_radiopack_black",[BASIC_Pack SUPPORT_GL_LOADOUT ["ACE_bodyBag",1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};

////////////////////
// Freelancer
////////////////////
if (_role == "SC") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _glSupportAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
	_gear = [["JCA_arifle_M4A4_GL_black_F","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],["rtg_radiopack_black",[BASIC_Pack SUPPORT_GL_LOADOUT ["ACE_bodyBag",1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "TL") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _mrkOptics;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_gear = [["JCA_arifle_M16A4_GL_black_F","acwp_rc1","ACE_DBAL_A3_Green","hlc_optic_ATACR",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],["rtg_radiopack_black",[BASIC_Pack SUPPORT_GL_LOADOUT ["ACE_bodyBag",1],["Laserbatteries",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "MED") then
{
	_arsenalEquipment append _med;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;

	_gear = [["JCA_arifle_M4A4_GL_black_F","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_bloodIV_500",8],["ACE_bloodIV",4],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",9],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",18],["kat_TXA",10],["kat_fentanyl",8],["kat_atropine",10],["kat_naloxone",10],["ACE_elasticBandage",36],["ACE_quikclot",36],["ACE_packingBandage",36],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",10],["ACE_morphine",16],["kat_chestSeal",8],["ACE_splint",5]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "AT") then
{
	_arsenalEquipment append _launcherWeaponOwned;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
	_gear = [["JCA_arifle_M4A4_VFG_black_F","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],["rtg_MRAWS_olive","","","",["rtg_MRAWS_HEAT_F",1],[],""],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["rtg_30rnd_556_45",7,30]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["rtg_MRAWS_HEAT_F",2,1],["rtg_MRAWS_HE_F",2,1],["rtg_MRAWS_SMK_F",3,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "MG") then
{
	_arsenalEquipment append _mgAmmo;
	_arsenalEquipment append _machineguns;
	player setUnitRecoilCoefficient 1.7; // MG Recoil
	_gear = [["ptv_m249_b","acwp_rc1","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_VSM_CarrierRig_Gunner_MultiCam",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_200rnd_556_45",2,200]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["rtg_200rnd_556_45_t",7,200]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "PM") then
{
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _eng;
	_arsenalEquipment append _shotguns;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
	_gear = [["RTG_M4A1_9_GL_Black_F","muzzle_snds_L","","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["acwp_glock17_black","","","",["ACWP_19Rnd_9x21_Mag_glock",19],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["rtg_9mm_35Rnd_mag",7,35],["ACWP_19Rnd_9x21_Mag_glock",4,19]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["MineDetector",1],["ToolKit",1],["rhsusf_m112_mag",7,1],["SatchelCharge_Remote_Mag",1,1]]],"VSM_OPS_multicam","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "RFL") then
{
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
};

////////////////////
// Firebrand
////////////////////
if (_role == "PLT") then
{
    _arsenalEquipment append _plt;
    _arsenalEquipment append _med;
    _arsenalEquipment append _carbines;
    _arsenalEquipment append _submachineguns;
	_arsenalEquipment append _battlerifles;
    _gear = [["RTG_M4A1_9_Black_F","muzzle_snds_L","","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_9mm_35Rnd_mag",10,35]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ToolKit",1],["ACE_bodyBag",1]]],"rhsusf_hgu56p_visor_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "DG") then
{
    _arsenalEquipment append _plt;
    _arsenalEquipment append _med;
    _arsenalEquipment append _machineguns;
    _arsenalEquipment append _mgAmmo;
    player setUnitRecoilCoefficient 1.7; // MG Recoil
    _gear = [["ptv_m249_b","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_VSM_CarrierRig_Gunner_MultiCam",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_200rnd_556_45",2,200]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ToolKit",1],["rtg_200rnd_556_45_t",7,200]]],"rhsusf_hgu56p_visor_mask_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};

// Load Arsenal
[player, _arsenalEquipment] call ace_arsenal_fnc_addVirtualItems;
player setUnitLoadout _gear;

// Hint
hint format ["Arsenals Created: %1, Version: %2", name player, _ArsenalVersion];
sleep 5;
hintSilent "";

