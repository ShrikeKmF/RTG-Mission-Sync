
// Load item fragments from separate files
_arsenalItems = []; 
_privateFragments = [
    "RTG Arsenal\Arsenal Items\arsenal_parts\Night Vision.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Ammo.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Medical.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Gear.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Uniforms.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Vests.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Backpacks.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Headgear.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Anti Tank.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Secondarys.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Primarys.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Attachments.sqf",
    "RTG Arsenal\Arsenal Items\arsenal_parts\Facewear.sqf"
];	

{
    private _frag = call compile preprocessFile _x;
    if (typeName _frag == "ARRAY") then {
        _arsenalItems = _arsenalItems + _frag;
    };
} forEach _privateFragments;

// Filter items by role and camo
_filteredItems = [];
{
    private _itemClass = _x select 0;
    private _roles = _x select 1;
    private _camos = _x select 2;

    // treat empty or non-array roles/camos as "match all"
    private _rolesEmpty = !(typeName _roles == "ARRAY") || (count _roles == 0);
    private _camosEmpty = !(typeName _camos == "ARRAY") || (count _camos == 0);

    if (( _rolesEmpty || (_role in _roles) ) && ( _camosEmpty || (_camoTag in _camos) )) then {
        _filteredItems pushBack _itemClass;
    };
} forEach _arsenalItems;