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
    *           fn_Test.sqf
    *
	*/

	disableSerialization;
    _this params["_DA3F_Ctrl"];

	private _DA3F_Display 	= ctrlParent _DA3F_Ctrl;// ----> Parent // Récupération Display

	private _DA3F_Idd		= ctrlIDD _DA3F_Display;// ----> Récupération IDC Control. (ex : 2125)
	private _DA3F_Idc		= ctrlIDC _DA3F_Ctrl;// ----> Récupération IDC Control. (ex : 1545)

	// ----> enfant | Récupération des autres controles étant dans le dialog
	private _DA3F_Edit		= _DA3F_Display displayCtrl 1400;
	_DA3F_Edit ctrlSetText "";