_mkrarywalk = [];

{
	_type = getMarkerType _x;
  if (_type = "mil_start" then {
    _mkrarywalk pushBack _x;
  };
} forEach allMapMarkers;

startWalk =
{

};

startArty =
{

};

startHelo =
{

};

//////////////////////////////////////////
	//[getmarkerpos "marker",function,"Title","Desc","","image",1,[]],
_missionsData 	= [
];
_i = 0;
{
	_var = [getMarkerPos "_x", startWalk, "Walking in", "Units will enter the area without a vehicle and will remain undetected.","","",1,[]];
  _missionsData set [_i, _var];
} forEach _mkrarywalk;
//////////////////////////////////////////

disableserialization;

_parentDisplay 	= [] call bis_fnc_displayMission;
_mapCenter 	= getmarkerpos "mrk_mapCentre";
_ORBAT 		= [];
_markers 	= [];
_images 	= [];
_overcast 	= overcast;
_isNight 	= !((dayTime > 6) && (dayTime < 20));
_scale		= 0.3;
_simul		= true;


[
findDisplay 46,
_mapCenter,
_missionsData,
_ORBAT,
_markers,
_images,
_overcast,
_isNight,
_scale,
_simul
] call Bis_fnc_strategicMapOpen;