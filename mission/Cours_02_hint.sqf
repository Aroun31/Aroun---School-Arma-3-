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
    *           Cours_02_hint.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */
        private _DA3F_Txt       = "";
        private _DA3F_Br        = "<br/>";
        private _DA3F_School    = "Aroun School";
    //    private _DA3F_Br      = "\n";

        private _DA3F_Addline   = {_DA3F_Txt = _DA3F_Txt + _this};
        private _DA3F_AddlineBr = {_DA3F_Txt = _DA3F_Txt + _this; _DA3F_Txt = _DA3F_Txt + _DA3F_Br;};

/*
        "coucou" call _DA3F_Addline;

        "Salut" call _DA3F_AddlineBr;

        (format["<t color='#fefefe' size='1' align='center' ><t/>",nil])call _DA3F_Addline;

        (format["<t color='#fefefe' size='1' align='center' ><t/>",nil])call _DA3F_AddlineBr;

        _DA3F_Br call _DA3F_AddlineBr;
*/

        (format["<t color='#fefefe' size='1' align='center' >Bonjour<t/>",nil])call _DA3F_AddlineBr;

        (format["<t color='#f0f000' size='1.3' align='center' >%1<t/>",profileName])call _DA3F_AddlineBr;

        _DA3F_Br call _DA3F_Addline;

        (format["<t color='#fefefe' size='1' align='center' >Bienvenue sur :<t/>",nil])call _DA3F_AddlineBr;
        (format["<t color='#fefefe' size='1' align='center' >%1<t/>",_DA3F_School])call _DA3F_AddlineBr;

        hint parseText _DA3F_Txt;

        systemChat "";