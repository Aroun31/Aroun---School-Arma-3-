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
    *           fn_ActionValide.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               _this call DA3F_fnc_ActionValide;
    *
    */

	disableSerialization;

    _this params["_DA3F_Ctrl"];

    // ----> Parent // Récupération Display
	private _DA3F_Display 	= ctrlParent _DA3F_Ctrl;

    // ----> Récupération IDC Control. (ex : 2125)
	private _DA3F_Idd		= ctrlIDD _DA3F_Display;

	// ----> Récupération IDC Control. (ex : 1545)
    private _DA3F_Idc		= ctrlIDC _DA3F_Ctrl;

	// ----> enfant | Récupération des autres controles étant dans le dialog
	private _DA3F_Edit		= _DA3F_Display displayCtrl 1400; // Zone de saisie
	private _DA3F_ShowTxt	= _DA3F_Display displayCtrl 1100; // Zone de text

	// ----> intéroge le texte contenu dans un control
	private _DA3F_Text		= ctrlText _DA3F_Edit;

        // ----> Nous faisons un switch avec l'IDC pour définir quelle action sera effectué
        switch ( str _DA3F_Idc ) do {

            // Clear de la box / efface la zone de saisie
            case "2400": {

                _DA3F_Edit ctrlSetText "";

            };

            // Valide / Affichage du texte
            case "2401": {

                // ----> Change le texte contenu dans un control par votre chaîne de caractères
                private _DA3F_NewText   = "<t size='2.5'>&#160;</t><br/><t color='#F31400' size='1.8' align='center' >%1<t/>";

                    _DA3F_ShowTxt ctrlSetStructuredText parseText format [_DA3F_NewText, _DA3F_Text];

            };

            // Ceci est une case par défaut . Si le script trouve pas les conditions dans le switch... Ce n'est pas indispensable ça dépend du cas de figure dans le quel vous êtes

            default {hint "Une erreur est arrivé. Sortie par défaut sélectionné"};
        };
