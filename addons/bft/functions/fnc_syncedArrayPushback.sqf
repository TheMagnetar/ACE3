/*
 * Author: Glowbal
 *
 *
 * Arguments:
 * 0: varName <STRING>
 * 1: data <ARRAY>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_varName", "_data"];

if (typeName _data == "ARRAY" && {(count _data == 0)}) exitwith {};

["bft_syncedArrayPushback", [_varName, _data]] call CBA_fnc_globalEvent;
