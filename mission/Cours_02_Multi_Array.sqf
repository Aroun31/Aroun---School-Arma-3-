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
    *           Cours_02_Multi_Array.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    /*
        Se référer au fichier :
            Cours_02_select_Array.sqf
        pour un petite intro sur les array
    */

        private _DA3F_StockMrk      = [];
        private _DA3F_MultiArray    = [
            ["ColorBlue","ColorRed","ColorGreen"],
            [[50,20],[20,50],[20,20],[50,50]],
            [position player,[6411.53,9640.43,0]],
            ["ELLIPSE","ICON","RECTANGLE"]
        ];

    _DA3F_Get_My_Multi_Array =
    {

        /*
            Ceci est un cas de figure  dans le quel
            on récupère nos arguments
            pour ensuite récupérer les arguments de nos arguments Oo
            WTF ??
            Tu te calme c'est un exemple (cas d'école #ArounSchool) ;)
        */

        params[
            ["_DA3F_Arr_Color",[],[[]]],
            ["_DA3F_Arr_Radius",[],[[]]],
            ["_DA3F_Arr_Pos",[],[[]]],
            ["_DA3F_Arr_TypeMrk",[],[[]]]
        ];

        _DA3F_Arr_Color params[
            ["_DA3F_Blue","ColorPink",[""]],
            ["_DA3F_Red","ColorPink",[""]],
            ["_DA3F_Vert","ColorPink",[""]]
        ];

        _DA3F_Arr_Radius params[
            ["_DA3F_Pos_50_20",[80,80],[[]]],
            ["_DA3F_Pos_20_50",[80,80],[[]]],
            ["_DA3F_Pos_20_20",[80,80],[[]]],
            ["_DA3F_Pos_50_50",[80,80],[[]]]
        ];

        _DA3F_Arr_Pos params[
            ["_DA3F_Pos_Player",[0,0,0],[[]]],
            ["_DA3F_Pos_arr",[0,0,0],[[]]]
        ];

        _DA3F_Arr_TypeMrk params[
            ["_DA3F_Pos_TypeMrk_E","ELLIPSE",[""]],
            ["_DA3F_Pos_TypeMrk_I","ELLIPSE",[""]],
            ["_DA3F_Pos_TypeMrk_R","ELLIPSE",[""]]
        ];

            if (str _DA3F_Pos_Player isEqualTo "[0,0,0]") exitWith {
                systemChat "Erreur de position !";
            };

// https://community.bistudio.com/wiki/createMarker
// https://community.bistudio.com/wiki/cfgMarkers
// https://community.bistudio.com/wiki/CfgMarkerColors_Arma_3

            private _DA3F_Mrk_Exemple = createMarker [format ["MyMrk_%1", _DA3F_Pos_Player], _DA3F_Pos_Player];

            _DA3F_Mrk_Exemple setMarkerShape _DA3F_Pos_TypeMrk_E;
            _DA3F_Mrk_Exemple setMarkerColor _DA3F_Red;
            _DA3F_Mrk_Exemple setMarkerSize _DA3F_Pos_20_50;

            _DA3F_StockMrk pushBack _DA3F_Mrk_Exemple;

            private _DA3F_Mrk_Exemple = createMarker [format ["MyMrkName_%1", _DA3F_Pos_Player], _DA3F_Pos_Player];

            _DA3F_Mrk_Exemple setMarkerShape _DA3F_Pos_TypeMrk_I;
            _DA3F_Mrk_Exemple setMarkerType "hd_dot";
            _DA3F_Mrk_Exemple setMarkerColor _DA3F_Red;
            _DA3F_Mrk_Exemple setMarkerSize [0.8,0.8];
            _DA3F_Mrk_Exemple setMarkerText format ["marker : %1", str _DA3F_Pos_Player];

            _DA3F_StockMrk pushBack _DA3F_Mrk_Exemple;

                waitUntil {sleep 0.1; DA3F_KillLoopOrInstance};

                {
                    deleteMarker _x;
                } forEach _DA3F_StockMrk;
    };

/*
        FNC 2
    Ici nous faisons un appel random
    des informations contenu dans nos argument entrant
*/

    private _DA3F_Get_My_Multi_Array_2 = {

        // Voyons comment récupérer et utiliser de façon simple (mais stupide !) nos arguments
        params[
            ["_DA3F_Arr_Color",[],[[]]],
            ["_DA3F_Arr_Radius",[],[[]]],
            ["_DA3F_Arr_Pos",[],[[]]],
            ["_DA3F_Arr_TypeMrk",[],[[]]]
        ];

                _DA3F_Arr_Color = selectRandom _DA3F_Arr_Color;
                _DA3F_Arr_Radius = selectRandom _DA3F_Arr_Radius;
                _DA3F_Arr_Pos = selectRandom _DA3F_Arr_Pos;
                _DA3F_Arr_TypeMrk = selectRandom _DA3F_Arr_TypeMrk;


                    _DA3F_Arr_Pos params["_axe_X", "_axe_Y", "_axe_Z"];
                _DA3F_Arr_Pos = selectRandom[
                    [ (_axe_X) + (random 250), (_axe_Y) + (random 250), 0],
                    [ (_axe_X) + (random 250), (_axe_Y) - (random 250), 0],
                    [ (_axe_X) - (random 250), (_axe_Y) + (random 250), 0],
                    [ (_axe_X) - (random 250), (_axe_Y) - (random 250), 0]
                ];

            private _DA3F_Mrk_Exemple = createMarker [format ["MyMrk_%1", _DA3F_Arr_Pos], _DA3F_Arr_Pos];
            player setPosASLW _DA3F_Arr_Pos;
                systemChat str [_DA3F_Arr_Color, _DA3F_Arr_Radius, _DA3F_Arr_Pos,_DA3F_Arr_TypeMrk];
            _DA3F_Mrk_Exemple setMarkerShape _DA3F_Arr_TypeMrk;
            _DA3F_Mrk_Exemple setMarkerColor _DA3F_Arr_Color;
            if ((toUpper _DA3F_Arr_TypeMrk) isEqualTo "ICON") then [{
                systemChat "instance n°1";
                _DA3F_Mrk_Exemple setMarkerType "hd_dot";
                _DA3F_Mrk_Exemple setMarkerText "Coucou le live";
            },{
                systemChat "instance n°2";
            _DA3F_Mrk_Exemple setMarkerSize _DA3F_Arr_Radius;
        }];

            _DA3F_StockMrk pushBack _DA3F_Mrk_Exemple;

                waitUntil {sleep 0.1; DA3F_KillLoopOrInstance};

                {
                    deleteMarker _x;
                } forEach _DA3F_StockMrk;

    };

    // Mettons tout ce que nous avons vu en oeuvre maintenant
    // Rendons ça plus logique et intutif.
    // La fnc pour créer le marker maintenant est indépendante
    // les arguments peuvent être rédiger en dur ou auto par un script


/*
    fnc 3
*/

        private _DA3F_CreateMarker={

                params[
                    ["_DA3F_Color","",[""]],
                    ["_DA3F_Radius",[40,40],[[]]],
                    ["_DA3F_Pos",[],[[]]],
                    ["_DA3F_TypeMrk","",[""]],
                    ["_DA3F_GetMrkicon","hd_dot",[""]],
                    ["_DA3F_TextMrk","No text marker",[""]]
                ];

                    if ( str _DA3F_Pos isEqualTo "[]" ) exitWith {
                        hint "Erreur de position";
                    };

                    _DA3F_TypeMrk = (toUpper _DA3F_TypeMrk);

                    private _DA3F_Mrk_Exemple = createMarker [format ["MyMrk_%1", _DA3F_Pos], _DA3F_Pos];
                    // TP player (Verif pos)
                    // player setPosASLW _DA3F_Arr_Pos;
                        systemChat str [_DA3F_Color, _DA3F_Radius, _DA3F_Pos,_DA3F_TypeMrk];
                    _DA3F_Mrk_Exemple setMarkerShape _DA3F_TypeMrk;
                    _DA3F_Mrk_Exemple setMarkerColor _DA3F_Color;
                    if (_DA3F_TypeMrk isEqualTo "ICON") then [{
                        systemChat "instance n°1";
                        _DA3F_Mrk_Exemple setMarkerType _DA3F_GetMrkicon;
                        _DA3F_Mrk_Exemple setMarkerText _DA3F_TextMrk;
                    },{
                        systemChat "instance n°2";
                        _DA3F_Mrk_Exemple setMarkerSize _DA3F_Radius;
                }];

                    //_DA3F_StockMrk pushBack _DA3F_Mrk_Exemple;
                    _DA3F_Mrk_Exemple spawn {

                    hintSilent "création d'un marker";
                    sleep 5;
                    hintSilent "";

                waitUntil {sleep 0.1; DA3F_KillLoopOrInstance};
                            deleteMarker _this;
                }
        };

/*
    fnc 4
    Argument du marker créé par la function
*/


    private _DA3F_Get_My_Multi_Array_3 = {
        params[
            ["_DA3F_Arr_Color",[],[[]]],
            ["_DA3F_Arr_Radius",[],[[]]],
            ["_DA3F_Arr_Pos",[],[[]]],
            ["_DA3F_Arr_TypeMrk",[],[[]]]
        ];

                _DA3F_Arr_Color = selectRandom _DA3F_Arr_Color;
                _DA3F_Arr_Radius = selectRandom _DA3F_Arr_Radius;
                _DA3F_Arr_Pos = selectRandom _DA3F_Arr_Pos;
                _DA3F_Arr_TypeMrk = selectRandom _DA3F_Arr_TypeMrk;

                    _DA3F_Arr_Pos params["_axe_X", "_axe_Y", "_axe_Z"];
                _DA3F_Arr_Pos = selectRandom[
                    [ (_axe_X) + (random 250), (_axe_Y) + (random 250), 0],
                    [ (_axe_X) + (random 250), (_axe_Y) - (random 250), 0],
                    [ (_axe_X) - (random 250), (_axe_Y) + (random 250), 0],
                    [ (_axe_X) - (random 250), (_axe_Y) - (random 250), 0]
                ];

                private _DA3F_MyArgs = [
                    _DA3F_Arr_Color,
                    _DA3F_Arr_Radius,
                    _DA3F_Arr_Pos,
                    _DA3F_Arr_TypeMrk
                    ];

               _DA3F_MyArgs call _DA3F_CreateMarker;

    };


    //_DA3F_MultiArray call _DA3F_Get_My_Multi_Array_3;

/*
    Argument du marker créé en dur
*/
/*

        Il est possible de tout rendre individuel de cette façon

    ["ColorPink",[75,90],[7836.07,10077.7,0.00128365],"ICON","hd_start","Aroun School & Cie"] call _DA3F_CreateMarker;

    ["ColorPink",nil,[7029.21,10517.8,0.00139618],"ICON","hd_start","Aroun School & Cie"] call _DA3F_CreateMarker;

    ["ColorPink",nil,[7324.14,10102.9,0.00177765],"ICON",nil,""] call _DA3F_CreateMarker;

    ["ColorPink",[75,90],position player,"ICON"] call _DA3F_CreateMarker;

    ["ColorPink",[75,90],position player,"Rectangle"] call _DA3F_CreateMarker;
*/

/*
    ou pour l'expemple faire l'appel de tous nos tableux contenant nos arguments !
*/

    private _DA3F_AllArgs = [
        ["ColorPink",[75,90],[7836.07,10077.7,0.00128365],"ICON","hd_start","Aroun School & Cie"],
        ["ColorPink",nil,[7029.21,10517.8,0.00139618],"ICON","hd_start","Aroun School & Cie"],
        ["ColorPink",nil,[7324.14,10102.9,0.00177765],"ICON",nil,""],
        ["ColorPink",[75,90],position player,"ICON"],
        ["ColorPink",[75,90],position player,"Rectangle"]
    ];


    // Avec encore et toujours notre foreach (appel des élément de son tableau les uns après les autres)
        {
            _x call _DA3F_CreateMarker
        } forEach _DA3F_AllArgs;


    /*
        _DA3F_MultiArray call _DA3F_Get_My_Multi_Array;

    sera égale à :

            [
                ["colorBlue","ColorRed","ColorGreen"],
                [[50,20],[20,50],[20,20],[50,50]],
                [position player,str (mapGridPosition player)]
            ]call _DA3F_Get_My_Multi_Array;

    QUESTION :

        Si cela est la même chose, pourquoi faire une variable ?

            . . . .

    REPONSE :

            l'information étant stocké dans la variable la charge CPU est moins lourde !
            Ceci est très utile lors d'appel de config par exemple :
            private _My_Path_Cfg = (configFile >> "CfgVehicles" >> "ClassName");
            Tout le config étant stocké dans la variable il sera moins "gourmand"
            de faire l'appel de votre varible que d'en faire un appel direct !
    */