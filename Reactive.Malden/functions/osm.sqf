startWalking =
{
//Start mission

//Spawn mission
 "templates/convoy.sqf";

//Open secondary map
"functions/omm.sqf";
};

startArty =
{

};

startHelo =
{

};

//////////////////////////////////////////

_missionsData 	= [
	[getmarkerpos "respawn",startWalking,"Test Convoy","Secondary Objective: This OPFOR AAA base must be eliminated before CAS can safely be tasked to the area.","","images\img_AAA.jpg",1,[]],
	[getmarkerpos "mrk_Arty",startArty,"Artillery Emplacement","The primary objective is the destruction of the Aktinarki artillery battery.","","images\img_Arty.jpg",1,[]],
	[getmarkerpos "mrk_Helo",startHelo,"Attack Helicopter","Secondary Objective: A CSAT attack helicopter operates out of this position and represents a threat to the mission.","","images\img_Helo.jpg",1,[]]
];

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