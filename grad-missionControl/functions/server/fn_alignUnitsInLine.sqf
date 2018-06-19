/*

	line_start
	line_end

*/

private ["_direction", "_distance", "_viewDirection"];

_direction = line_start getRelDir line_end;

_distance = 0.8;

_viewDirection = _direction - 90;


 

{
	// dont align cmd
	if (!(typeOf vehicle _x isEqualTo "O_officer_F")) then {
		if (side _x isEqualTo east) then {
			private _linePos = line_start getRelPos [_forEachIndex * _distance, _direction + random 0.1];

			_x setPos _linePos;
			_x setDir _viewDirection;
			_x playAction "PlayerStand";
			_x setUnitPos "UP";

			_x switchMove "ACE_AmovPercMstpScapWnonDnon";

			_x disableAI "MOVE";
			_x disableAI "WEAPONAIM";
			_x disableAI "TARGET";
			_x disableAI "FSM";
		};
	} else {
		if (side _x isEqualTo east) then {
			_x playAction "PlayerStand";
			_x setUnitPos "UP";

			_x playMoveNow "Acts_A_M01_briefing";

			_x disableAI "MOVE";
			_x disableAI "WEAPONAIM";
			_x disableAI "TARGET";
			_x disableAI "FSM";

			_x setDir _viewDirection - 180;
		};
	}; 
} forEach playableUnits + switchableUnits;