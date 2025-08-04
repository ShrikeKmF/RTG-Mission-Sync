// Arsenal Version
_ArsenalVersion = "3.2.0";

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

////////////////////
// Hitman
////////////////////
if (_role == "CMD") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_rifle;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _mid_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _rtgBackpacks;
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
};

if (_role == "FO") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_rifle;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _mid_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _LightLaunchers;
	_arsenalEquipment append _rtgBackpacks;
	_gear = [
		["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","rtg_ELCAN_3xSpectreDR",["rtg_30rnd_556_45",30],["ptv_1Rnd_HEDP_Grenade_shell",1],""],
		["rtg_m72a7_lat","","","",[],[],""],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor02_rgr",[BASIC_Vest ["ACE_HuntIR_monitor",1],["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
		["rtg_radiopack_black",[BASIC_Pack ["ACE_bodyBag",1],["Laserbatteries",1,1],["ptv_1Rnd_HEDP_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_Shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1]]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};

if (_role == "JTAC") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_rifle;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _rtgBackpacks;
	_gear = [
		["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],["ptv_1Rnd_HEDP_Grenade_shell",1],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor02_rgr",[BASIC_Vest ["ACE_HuntIR_monitor",1],["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
		["rtg_radiopack_black",[BASIC_Pack ["ACE_bodyBag",1],["Laserbatteries",1,1],["ptv_1Rnd_HEDP_Grenade_shell",20,1],["1Rnd_SmokeRed_Grenade_Shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1]]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};

if (_role == "PLTMED") then
{
	_arsenalEquipment append _tl;
	_arsenalEquipment append _med;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _rtgBackpacks;
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
};

////////////////////
// Freelancer
////////////////////
if (_role == "SC") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_rifle;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _mid_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _rtgBackpacks;
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
};
if (_role == "MED") then
{
	_arsenalEquipment append _med;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _rtgBackpacks;
	_gear = [
		["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",7,30]]],
		["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["ACE_bloodIV_500",8],["ACE_bloodIV",4],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",9],["kat_AED",1],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",18],["kat_fentanyl",8],["kat_atropine",10],["kat_naloxone",10],["ACE_elasticBandage",36],["ACE_quikclot",36],["ACE_packingBandage",36],["ACE_surgicalKit",1],["kat_BVM",1],["kat_larynx",10],["ACE_morphine",16],["kat_chestSeal",8],["ACE_splint",5]]],
		"rtg_ech_od","",
		["Binocular","","","","",[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};
if (_role == "MG") then
{
	_arsenalEquipment append _mgAmmo;
	_arsenalEquipment append _machineguns;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _rtgBackpacks;
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
};
if (_role == "PM") then
{
	_arsenalEquipment append _eng;
	_arsenalEquipment append _shotguns;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _LightLaunchers;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _rtgBackpacks;
	_gear = [
		["RTG_M4A1_9_Black_F","","ACE_DBAL_A3_Green","acwp_t2",["rtg_9mm_35Rnd_mag",35],[],""],
		["rtg_m72a7_lat","","","",[],[],""],
		["acwp_glock17_black","","","",["ACWP_19Rnd_9x21_Mag_glock",19],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor_r_rgr",[BASIC_Vest ["rtg_9mm_35Rnd_mag",7,35],["ACWP_19Rnd_9x21_Mag_glock",4,19],["rhs_charge_tnt_x2_mag",2,1],["ACE_CTS9",6,1]]],
		["rtg_VSM_OGA_OD_Backpack_Kitbag",[BASIC_Pack ["tsp_breach_shock",1],["MineDetector",1],["ACE_wirecutter",1],["ACE_DefusalKit",1],["tsp_breach_popper_mag",6,1],["rhsusf_m112_mag",4,1],["SLAMDirectionalMine_Wire_Mag",3,1],["tsp_breach_package_mag",3,1]]]
		,"rtg_ech_od","",
		["Binocular","","","",[],[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};
if (_role == "RFL") then
{
	_arsenalEquipment append _rifles;
	_arsenalEquipment append _battlerifles;
	_arsenalEquipment append _LightLaunchers;
	_arsenalEquipment append _mid_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _special_optics;
	_arsenalEquipment append _mgAmmo;
	_arsenalEquipment append _rtgBackpacks;
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
};

////////////////////
// Recon
////////////////////
if (_role == "RSC") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _glAmmo;
	_arsenalEquipment append _tl;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _recon;
	_arsenalEquipment append _recon_backpacks;
	_gear = [
		["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","acwp_t2",["rtg_30rnd_556_45",30],["ptv_1Rnd_HEDP_Grenade_shell",1],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor02_rgr",[BASIC_Vest ["ACE_HuntIR_monitor",1],["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",5,30],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
		["rtg_radiopack_black",[BASIC_Pack ["ACE_bodyBag",1],["Laserbatteries",1,1],["ptv_1Rnd_HEDP_Grenade_shell",25,1],["1Rnd_SmokeRed_Grenade_Shell",5,1],["1Rnd_Smoke_Grenade_shell",15,1]]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","",["Laserbatteries",1],[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};
if (_role == "RMED") then
{
	_arsenalEquipment append _med_light;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _recon;
	_arsenalEquipment append _recon_backpacks;
	_gear = [
		["JCA_arifle_M4A4_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_30rnd_556_45",30],[],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor_r_rgr",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",5,30]]],
		["rtg_VSM_OGA_OD_Backpack_Compact",[BASIC_Pack ["ACE_bloodIV_500",8],["kat_Pulseoximeter",9],["kat_accuvac",1],["ACE_tourniquet",8],["ACE_epinephrine",6],["kat_fentanyl",6],["kat_atropine",6],["kat_naloxone",6],["ACE_elasticBandage",15],["ACE_quikclot",15],["ACE_packingBandage",15],["ACE_surgicalKit",1],["kat_larynx",6],["ACE_morphine",6],["kat_chestSeal",6],["ACE_splint",4]]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","","",[],""],
		["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
};
if (_role == "RS") then
{
	_arsenalEquipment append _glWeaponShop;
	_arsenalEquipment append _gl_carbine;
	_arsenalEquipment append _eng;
	_arsenalEquipment append _submachineguns;
	_arsenalEquipment append _carbines;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _recon;
	_arsenalEquipment append _recon_backpacks;
	_gear = [
		["JCA_arifle_M4A1_GL_black_F","","ACE_DBAL_A3_Green","acwp_t2",["rtg_30rnd_556_45",30],["GX_1RND_DRONE40_RECON_M203",1],""],
		[],
		["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],
		["rtg_shirtcut_black_black",[BASIC_Medical []]],
		["V_thor02_rgr",[BASIC_Vest ["ACE_HuntIR_monitor",1],["ptv_15Rnd_9mm_P320",3,15],["rtg_30rnd_556_45",5,30],["ACE_HandFlare_Green",4,1],["B_IR_Grenade",2,1]]],
		["rtg_VSM_OGA_OD_Backpack_Compact",[BASIC_Pack ["ACE_SpottingScope",1],["tsp_breach_shock",1],["MineDetector",1],["ACE_DefusalKit",1],["tsp_breach_popper_mag",4,1],["tsp_breach_package_mag",2,1],["ACE_bodyBag",1],["Laserbatteries",1,1],["GX_1RND_DRONE40_RECON_M203",2,1],["GX_1RND_DRONE40_SMOKE_GREEN_M203",3,1],["GX_1RND_DRONE40_SMOKE_RED_M203",3,1]]],
		"rtg_ech_od","",
		["rtg_laserDesignator_tan_gh","","","",[],[],""],
		["ItemMap","IteB_UavTerminalmGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_green_gh"]
	];
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
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _rtgBackpacks;
    _gear = [["JCA_smg_MP5_VFG_black_F","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_9mm_35Rnd_mag",35],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_Crye_AVS_2",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_9mm_35Rnd_mag",10,35]]],["rtg_VSM_Multicam_Backpack_Compact",[BASIC_Pack ["ToolKit",1],["ACE_bodyBag",1]]],"rhsusf_hgu56p_visor_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","","",[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};
if (_role == "DG") then
{
    _arsenalEquipment append _plt;
    _arsenalEquipment append _med;
    _arsenalEquipment append _machineguns;
    _arsenalEquipment append _mgAmmo;
	_arsenalEquipment append _short_range_optics;
	_arsenalEquipment append _laserdesignators;
	_arsenalEquipment append _rtgBackpacks;
    _gear = [["ptv_m249_b","","ACE_DBAL_A3_Green","acwp_eotech",["rtg_200rnd_556_45_t",200],[],""],[],["ptv_p320t","","","",["ptv_15Rnd_9mm_P320",15],[],""],["rtg_g3_mc",[BASIC_Medical []]],["rtg_VSM_CarrierRig_Gunner_MultiCam",[BASIC_Vest ["ptv_15Rnd_9mm_P320",3,15],["rtg_200rnd_556_45",2,200]]],["rtg_VSM_Multicam_Backpack_Kitbag",[BASIC_Pack ["ToolKit",1],["rtg_200rnd_556_45_t",7,200]]],"rhsusf_hgu56p_visor_mask_tan","rhsusf_shemagh2_gogg_tan",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","rtg_pvs_15_brown_gh"]];
};

// Load Arsenal
[player, _arsenalEquipment] call ace_arsenal_fnc_addVirtualItems;
player setUnitLoadout _gear;

// Hint
hint format ["Arsenals Created: %1, Version: %2", name player, _ArsenalVersion];
sleep 5;
hintSilent "";

