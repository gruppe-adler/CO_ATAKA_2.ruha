/* 

hint str (civmodule_1 getVariable ["#active",false]);
 civmodule_1 setVariable ["#active",false];

*/

params ["_unit"];

private _uniform = selectRandom [
"rds_uniform_Worker1",
"rds_uniform_Worker2",
"rds_uniform_Worker3",
"rds_uniform_Worker4",
"rds_uniform_Woodlander1",
"rds_uniform_Woodlander2",
"rds_uniform_Woodlander3",
"rds_uniform_Woodlander4",
"rds_uniform_Villager1",
"rds_uniform_Villager2",
"rds_uniform_Villager3",
"rds_uniform_Villager4",
"rds_uniform_Profiteer1",
"rds_uniform_Profiteer2",
"rds_uniform_Profiteer3",
"rds_uniform_Profiteer4",
"rds_uniform_citizen1",
"rds_uniform_citizen2",
"rds_uniform_citizen3",
"rds_uniform_citizen4",
"rds_uniform_Rocker1",
"rds_uniform_Rocker2",
"rds_uniform_Rocker3",
"rds_uniform_Rocker4"
];

private _headgear = selectRandom [
"rds_Villager_cap1",
"rds_Villager_cap2",
"rds_Villager_cap3",
"rds_Villager_cap4"
];

_unit setUnitLoadout [[],[],[],[_uniform,[]],[],[],_headgear,"",[],["","","","","",""]];