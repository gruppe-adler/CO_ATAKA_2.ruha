waitUntil {!isNull player};
waitUntil {  time > 3 };
if (
  !isNull (getAssignedCuratorLogic player) &&
  {isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")}
) then
{
  // Note that the line below has to be uncommented if your mission is a Zeus Game Master mission.
  // TODO check if below is necessary to uncomment
  waitUntil {not isNil "ares_category_list"};

  ["ZEUS HELPERS", "Force Movement",
  {
  	// Get all the passed parameters
  	params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    if (!(_objectUnderCursor isKindOf "LAND")) exitWith { hint "no land vehicle"; };

    private _waypointPos = waypointPosition [group _objectUnderCursor, (currentWaypoint group _objectUnderCursor)];

    [_objectUnderCursor, _waypointPos] call GRAD_zeusHelpers_fnc_forceMovement;

  }] call Ares_fnc_RegisterCustomModule;

  ["ZEUS HELPERS", "Activate Civilian Modules",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    civmodule_1 setVariable ["#active",true,true];
    civmodule_2 setVariable ["#active",true,true];

  }] call Ares_fnc_RegisterCustomModule;

  ["ZEUS HELPERS", "Deactivate Civilian Modules",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    civmodule_1 setVariable ["#active",false,true];
    civmodule_2 setVariable ["#active",false,true];

  }] call Ares_fnc_RegisterCustomModule;

  ["ZEUS HELPERS", "Stuhlkreis bauen",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _dialogResult =
    [
      "Anzahl der Stühle",
      [
        // The last number is optional! If you want the first selection you can remove the number.
        ["Text Control", "", "24"]
      ]
    ] call Ares_fnc_showChooseDialog;

    // If the dialog was closed.
    if (_dialogResult isEqualTo []) exitWith{};

    // Get the selected data
    _dialogResult params ["_typedText"];
    private _count = parseNumber _typedText;

    if (_count isEqualTo 0) exitWith { systemChat format ["Unknown number: %1", _typedText]; };
    // Output the data to the chat.    
    //systemChat format ["Typed Text: %1", _typedText];
    
    ["Land_CampingChair_V1_F", _position, _count] call GRAD_zeusHelpers_fnc_createChairCircle;

  }] call Ares_fnc_RegisterCustomModule;

};