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
    *           Cours_02_select_Array.sqf
    *
    *       DESCRIPTION :
    *               - select
    *               - param
    *               - params
    *               - foreach
    *
    */

    systemChat "Cours 02";
        // Je suis un simple Tableau
        private _DA3F_SimpleArray = [{hint "salut"}, true, 54, player, ['hey']];


        // Appeler les éléments d'un tableau

        //       private _DA3F_String    = (_DA3F_SimpleArray select 0);
        //       private _DA3F_Bool      = (_DA3F_SimpleArray select 1);
        //       private _DA3F_Unit      = (_DA3F_SimpleArray select 3);

        // Sera tout aussi bien de faire

        //       private _DA3F_String    = _DA3F_SimpleArray param[0];
        //       private _DA3F_Bool      = _DA3F_SimpleArray param[1];
        //       private _DA3F_Unit      = _DA3F_SimpleArray param[3];

        // ou encore (Dans ce cas de figure les variables sont auto private)

        //       _DA3F_SimpleArray params[
        //               "_DA3F_String",
        //               "_DA3F_Bool",
        //               "",
        //               "_DA3F_Unit"
        //           ];


        {

            if (DA3F_KillLoopOrInstance) exitWith {
                DA3F_KillLoopOrInstance = FALSE;
                systemChat "Kill Foreach :: OK";
            };

            switch (true) do {
                // SCALAR je suis du chiffre ou du nombre
                case (_x isEqualType 0): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // ARRAY je suis un tableau
                case (_x isEqualType []): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // STRING je suis du une chaîne de caractères (de l'écrit)
                case (_x isEqualType ""): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // CODE je suis du code ne pas confondre avec ARRAY
                case (_x isEqualType {}): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // BOOLEAN je suis Vrai ou Faux (TRUE | FALSE)
                case (_x isEqualType false): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // OBJECT Je suis un Objet le joueur par exemple est reconne comme tel
                case (_x isEqualType objNull): {
                    hint format ["je suis de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x]
                };
                // Faites vos tests en cas de type inconnu dans nos conditions, ceci vous indiquera les autres types que nous n'avons pas vu plus haut.
                default {
                    hint format ["je suis la case  \n""default""\n et de type : \n %1 \n\nen index : \n%2\n\n%3",(typeName _x), _foreachindex, str _x];
                };
            };
            sleep 3;
        } forEach _DA3F_SimpleArray;

        //hint str [_DA3F_String,_DA3F_Bool,_DA3F_var];