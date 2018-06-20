// binding to the player object:
["setTFARFrequencyHandler", "OnRadiosReceived", {

	private _frequencySW = player getVariable ["GRAD_missionControl_frequencySW", "133.7"];
	private _frequencyLR = player getVariable ["GRAD_missionControl_frequencyLR", "33.7"];

	[call TFAR_fnc_activeSwRadio, _frequencySW] call TFAR_fnc_setSwFrequency;
	[call TFAR_fnc_activeLrRadio, _frequencyLR] call TFAR_fnc_setLrFrequency;

	hint "new radio";

}, player] call TFAR_fnc_addEventHandler;