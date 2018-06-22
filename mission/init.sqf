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
    *           init.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

// cours 02 17.06.18
DA3F_KillLoopOrInstance =  false;
player addAction ["Run Script","Cours_02_Multi_Array.sqf",nil,9999];
player addAction ["Kill instance",{DA3F_KillLoopOrInstance = TRUE;hintSilent ""},nil,9999];


/*
//mini démo waitUntil
            []spawn {
                hint "j'attends";
                private _valid = false;

                        waitUntil {
                        sleep 0.1;
                        if (damage player > 0.5) then {
                            _valid = true;
                        };
                        _valid || !(alive Civ_01)
                    };

                    if (_valid) exitWith {
                        hint "Tu as mal bâtard !";
                    };

                hint "il est mort ce con";

                };

                []spawn {
                sleep 5;
                hint "Aïe !";
                sleep 1;
                player setDamage 0.6;
            };

*/