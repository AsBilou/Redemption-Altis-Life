/*
	File: fn_packupRoadBarrier.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed RoadBarrier.
*/
private["_Barrierroads"];
_Barrierroads = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_Barrierroads") exitWith {};

if(([true,"RoadBarrier",1] call life_fnc_handleInv)) then
{
	titleText[localize "STR_NOTF_RoadBarrier","PLAIN"];
	player removeAction life_action_RoadBarrierPickup;
	life_action_RoadBarrierPickup = nil;
	deleteVehicle _Barrierroads;
};