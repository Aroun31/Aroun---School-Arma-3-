/*
hint str _this;

private _arg = param[0,[[],[[]]]];
if (str _arg isEqualTo "[]") exitWith {
	hint "Erreur d'argument";
};
	_arg params[
	    ["_DA3F_Name","",[""]],
		["_DA3F_Pos",[],[[]]],
	    ["_DA3F_W_Name","",[""]],
	];
*/

private _DA3F_Points 	= 0;
private _bool 			= false;
private _total 			= 0;


private _DA3F_SetPoint 	= {
	private _DA3F_Value = param[0,[1,[0]]];
	private _DA3F_type 	= param[1,[true,[false]]];
	if (_DA3F_type) then [{
		_DA3F_Points = _DA3F_Points + _DA3F_Value;
		},{
		_DA3F_Points = _DA3F_Points - _DA3F_Value;
	}];
_DA3F_Points
};

	for "_i" from 1 to 6 do {
		_bool 	= selectRandom [TRUE,FALSE];
		_total 	= [ceil(random 5),_bool] call _DA3F_SetPoint;
		hint str ["\n",_total,"\n",_i,"\n"];
		sleep 3;
	};