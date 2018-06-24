
/*

    //Je suis l'axe X (Gauche / droite) ← →
    x = 0 * safezoneW + safezoneX;


    //Je suis l'axe Y (Haut / Bas) ↑↓
    y = 0 * safezoneH + safezoneY;


    //Je suis l'axe W (longueur) |← →
    w = 0 * safezoneW;


    //Je suis l'axe H (Hauteur) ↨
    h = 0 * safezoneH;

*/

class HppGUI_Demo
{
	idd 	= 240618;
	name 	= "HppGUI_Demo";
	author	= "@roun";

	class controlsBackground
	{
		class Background: DA3F_Background
		{
			idc = 1000;
			x = 0.340418 * safezoneW + safezoneX;
			y = 0.222778 * safezoneH + safezoneY;
			w = 0.315 * safezoneW;
			h = 0.546 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.3};
		};

		class Text_Ret_Edit: DA3F_StructureText
		{
			idc = 1100;
			text = "Ecris un message"; //--- ToDo: Localize;
			x = 0.349063 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.295312 * safezoneW;
			h = 0.364 * safezoneH;
		};

	};

	class controls
	{
		class close: DA3F_Btn_Close
		{
			idc = 2402;
			text = "X | fermeture"; //--- ToDo: Localize;
			x = 0.340418 * safezoneW + safezoneX;
			y = 0.202041 * safezoneH + safezoneY;
			w = 0.315208 * safezoneW;
			h = 0.0241852 * safezoneH; 
		};

		class Edit: DA3F_Edit
		{
			idc = 1400;
			text = "Votre texte"; //--- ToDo: Localize;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.282187 * safezoneW;
			h = 0.028 * safezoneH;
		};
		
		class Bouton_act1: DA3F_Btn
		{
			idc = 2400;
			text = "Effacer la zone de saisie"; //--- ToDo: Localize;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.668 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.07 * safezoneH;
			OnButtonClick = "_this call DA3F_fnc_ActionValide;";
		};

		class Bouton_act2: DA3F_Btn
		{
			idc = 2401;
			text = "Valider"; //--- ToDo: Localize;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.668 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.07 * safezoneH;
			//OnButtonClick = "hint 'salut'";
			OnButtonClick = "_this call DA3F_fnc_ActionValide;";
		};
	};
};