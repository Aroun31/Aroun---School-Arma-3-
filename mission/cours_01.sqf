	/*
    *
    *       Project :
    *              Community FR (Aroun School)
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           Cours_01.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/
    systemChat "Cours 01";
	private _DA3F_Local 	= "56";
	Variable_Global 		= str(random 100);
	Variable_Public 		= str(random 100);
	publicVariable "Variable_Public";

	private _DA3F_Yolo 		= "yolo";
	private _DA3F_Unit 		= player;
	private _DA3F_NameUnit 	= profileName;

	if (isNil "_this") then {
		_this = "nil";
	};

		hint str [_DA3F_Yolo,_DA3F_Unit,_DA3F_NameUnit,_this];
		systemChat str [_DA3F_Yolo,_DA3F_Unit,_DA3F_NameUnit,_this];

			player addAction ["hey !",{
				hintC "Coucou twitch";
			}];

player addAction ["Add value 1",{

	private _arg = param[3,[[],[[]]]];
		_arg params[
		    ["_DA3F_name","",[""]],
			["_DA3F_pos",[],[[]]],
		    ["_DA3F_Wname","",[""]]
		];

			[
				_DA3F_name,
				_DA3F_pos,
				_DA3F_Wname,
				"C'est très bien comme exemple"
			] execVM "MyFnc.sqf";

},[profileName,getPos player,worldName],998 ];



player addAction ["Run",{
	private _DA3F_FncYala = {
		/*
		 Le BriCodeur
		 _DA3F_FncYala
		 Description :
			Envoi sur position plus ajout du matériel voulu
		Arguments :
		0 : STRING 	: ClassName
		1 : ARRAY	: Position
		*/
			_this params[
				["_className", [""], ["",objNull]],
				["_pos", [ [] ], [ [] ]]
			];

				if (str _pos isEqualTo "[]") exitWith {
					hint str["Erreur de position :",_pos];
				};

				if (_className isEqualTo "") then {
					_className = "itemMap";
				};

					if ((backpack player) isEqualTo "") then [{
						player addItem _className;
					},{
						player addItemToBackpack _className;
				}];

			player setPos _pos;

			// Pose dans le script attend la condition
			waitUntil
			{
				sleep 0.1;
				(player distance _pos <= 5)
			};

		hint "Arrivé sur position !";
		sleep 2;
		hint "Bon Jump !";
		sleep 1;
		// Joueur invincible
		player allowDamage false;

			player setPosATL [
			((getPos player) select 0),
			((getPos player) select 1),
			((getPos player) select 2)+ 5
			];

				waitUntil
				{
					sleep 0.1;
					(isTouchingGround player)
				};

					hint "Tu as kiffé Encore ?? Allez pour le plaisir";
					sleep 2;
// Rendre l'instance indépendante avec un spawn
	// [_className, _pos]spawn {
	// Si spawn il faut récupérer les arguments transmis avec le params
/*
		_this params[
			["_className", [""], ["",objNull]],
			["_pos", [ [] ], [ [] ]]
		];
*/
		// Boucle de 3 instances avec un interval de 0.5 sec
		for "_a" from 1 to 3 do {
			hint str ["Saut n° ", _a];
				player setPosATL [((getPos player) select 0),((getPos player) select 1),((getPos player) select 2)+ 5];

				waitUntil
				{
					sleep 0.1;
					(isTouchingGround player)
				};
			sleep 0.5;
		};
	// }; // fermeture du Spawn

		sleep 2;
			hint "C'est fini je te laisse tranquille";
				player allowDamage true;
	};

		["itemMap",[8077.37,10053.6,0.00145721]]spawn _DA3F_FncYala;

}];


[]spawn {
	sleep 2;
	systemChat "Bienvenue sur la mission Live de Aroun";
	systemChat "Bon tests à toi ;) ";
};
