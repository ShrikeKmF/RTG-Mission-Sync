private _name = worldName;
_camoTag = "WDL"; // default

/*
Two part array for map world names and their corresponding camo suffixes.

WDL - Woodland
DES - Desert
ARD - Arid
TUN - Tundra
*/

_mapNameArray = [
    ["Stratis", "ARD"],
    ["UMB_Colombia", "WDL"],
    ["Altis", "ARD"],
    ["Intro", "ARD"],
    ["Sara", "WDL"],
    ["Sara_DBE1", "WDL"],
    ["SaraLite", "WDL"],
    ["Utes", "ARD"],
    ["mehland", "WDL"],
    ["swu_public_salman_map", "DES"],
    ["Chernarus", "WDL"],
    ["Chernarus_Summer", "WDL"],
    ["Porto", "ARD"],
    ["Takistan", "DES"],
    ["Zargabad", "DES"],
    ["Mountains_ACR", "ARD"],
    ["Woodland_ACR", "WDL"],
    ["Bootcamp_ACR", "ARD"],
    ["Desert_E", "DES"],
    ["ProvingGrounds_PMC", "ARD"],
    ["Shapur_BAF", "DES"],
    ["VR", "ARD"],
    ["Chernarus_Winter", "TUN"],
    ["Tanoa", "WDL"],
    ["IslaPera", "WDL"],
    ["tem_anizay", "DES"],
    ["lythium", "DES"],
    ["Malden", "WDL"],
    ["SefrouRamal", "DES"],
    ["Gulfcoast", "WDL"],
    ["Enoch", "ARD"],
    ["bala_murghab_summer", "ARD"],
    ["bala_murghab_winter", "TUN"],
    ["Farabad", "DES"],
    ["go_map_fjord", "TUN"],
    ["NorthTakistan", "DES"],
    ["rof_mok", "WDL"],
    ["vt7", "WDL"],
    ["VTF_Korsac", "WDL"],
    ["VTF_Korsac_Winter", "TUN"],
    ["brf_sumava", "WDL"]
];

{
    if ((_x select 0) == _name) then {
        _camoTag = _x select 1;
    };
} forEach _mapNameArray;