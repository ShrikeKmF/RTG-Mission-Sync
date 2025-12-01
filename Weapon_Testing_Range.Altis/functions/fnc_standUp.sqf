/* ----------------------------------------------------------------------------
Function: VC_StaticLine_fnc_standUp

Description: Sets player standing status to true.

Parameters: Player unit

Returns: none

Examples:
		[_player] call VS_StaticLine_fnc_standUp;

Author: Vice

---------------------------------------------------------------------------- */

params ["_player"];

_player setVariable ["VC_UnitStanding",true,true];