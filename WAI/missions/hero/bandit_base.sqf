if(isServer) then {
	 
	private 		["_baserunover","_mission","_directions","_position","_crate","_num"];

	_position		= [80] call find_position;
	_mission 		= [_position,"Hard","Bandit Base","MainHero",true] call init_mission;
	
	diag_log 		format["WAI: [Hero] bandit_base started at %1",_position];

	//Extra Large Gun Box
	_crate 			= createVehicle ["RUVehicleBox",[(_position select 0),(_position select 1),0], [], 0, "CAN_COLLIDE"];
	[_crate] 		call Extra_Large_Gun_Box;
	 
	//Buildings
	_baserunover0 	= createVehicle ["land_fortified_nest_big",[(_position select 0) - 40, (_position select 1),-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover1 	= createVehicle ["land_fortified_nest_big",[(_position select 0) + 40, (_position select 1),-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover2 	= createVehicle ["land_fortified_nest_big",[(_position select 0), (_position select 1) - 40,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover3 	= createVehicle ["land_fortified_nest_big",[(_position select 0), (_position select 1) + 40,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover4 	= createVehicle ["Land_Fort_Watchtower",[(_position select 0) - 10, (_position select 1),-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover5 	= createVehicle ["Land_Fort_Watchtower",[(_position select 0) + 10, (_position select 1),-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover6 	= createVehicle ["Land_Fort_Watchtower",[(_position select 0), (_position select 1) - 10,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover7 	= createVehicle ["Land_Fort_Watchtower",[(_position select 0), (_position select 1) + 10,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover = [_baserunover0,_baserunover1,_baserunover2,_baserunover3,_baserunover4,_baserunover5,_baserunover6,_baserunover7];
	
	_directions = [90,270,0,180,0,180,270,90];
	{ _x setDir (_directions select _forEachIndex) } forEach _baserunover;
	
	{ _x setVectorUp surfaceNormal position _x; } count _baserunover;
	
	//Group Spawning
	_num = round (random 3) + 4;
	[[_position select 0, _position select 1, 0],_num,"hard","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0, _position select 1, 0],4,"hard","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0, _position select 1, 0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0, _position select 1, 0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0, _position select 1, 0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;

	//Humvee Patrol
	[[(_position select 0) + 100, _position select 1, 0],[(_position select 0) + 100, _position select 1, 0],50,2,"HMMWV_Armored","Random","Bandit","Bandit",_mission] call vehicle_patrol;
	 
	//Turrets
	[[[(_position select 0) - 10, (_position select 1) + 10, 0]],"M2StaticMG","Easy","Bandit","Bandit",0,2,"Random","Random",_mission] call spawn_static;
	[[[(_position select 0) + 10, (_position select 1) - 10, 0]],"M2StaticMG","Easy","Bandit","Bandit",0,2,"Random","Random",_mission] call spawn_static;
	[[[(_position select 0) + 10, (_position select 1) + 10, 0]],"M2StaticMG","Easy","Bandit","Bandit",0,2,"Random","Random",_mission] call spawn_static;
	[[[(_position select 0) - 10, (_position select 1) - 10, 0]],"M2StaticMG","Easy","Bandit","Bandit",0,2,"Random","Random",_mission] call spawn_static;

	//Heli Paradrop
	[[(_position select 0), (_position select 1), 0],[0,0,0],400,"UH1H_DZ",10,"Random","Random",4,"Random","Bandit","Random","Bandit",true,_mission] spawn heli_para;

	[
		[_mission,_crate],	// mission number and crate
		["crate"], 			// ["crate"], or ["kill"], or ["assassinate", _unitGroup],
		[_baserunover], 	// cleanup objects
		"A jungle task force have set up a temporary encampment! Go and ambush it to make it yours!",	// mission announcement
		"Survivors captured the base, HOOAH!!",															// mission success
		"Survivors were unable to capture the base"														// mission fail
	] call mission_winorfail;

	diag_log format["WAI: [Hero] bandit_base ended at %1 ended",_position];
	h_missionrunning = false;
};