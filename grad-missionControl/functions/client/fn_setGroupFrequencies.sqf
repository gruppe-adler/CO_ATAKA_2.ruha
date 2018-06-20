// obj , number

params ["_unit", ["_frequency", ["133.7", "33.7"]]];

_frequency params ["_swFrequency", "_lrFrequency"];

{
	_x setVariable ["GRAD_missionControl_frequencySW", _swFrequency, true];
	_x setVariable ["GRAD_missionControl_frequencyLR", _lrFrequency, true];
	
} forEach units group _unit;