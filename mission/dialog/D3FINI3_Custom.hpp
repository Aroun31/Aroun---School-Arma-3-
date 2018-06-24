
// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4

class DA3F_Background
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {	0,	0.15,	0.2,	0.85};
	colorText[] = {	1,	1,	1,	1};
	text = "";
	fixedWidth = 0;
	colorShadow[] = {	0,	0,	0,	0.5};
	tooltipColorText[] = {	1,	1,	1,	1};
	tooltipColorBox[] = {	1,	1,	1,	1};
	tooltipColorShade[] = {	0,	0,	0,	0.65};
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;	
};

class DA3F_Text
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {	0,	0,	0,	0};
	colorText[] = {	0,	0.85,	1,	1};
	text = "";
	fixedWidth = 0;
	colorShadow[] = {	0,	0,	0,	0.5};
	tooltipColorText[] = {	1,	1,	1,	1};
	tooltipColorBox[] = {	1,	1,	1,	1};
	tooltipColorShade[] = {	0,	0,	0,	0.65};
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	font = "PuristaMedium";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;	
};

class DA3F_Edit {

	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {	0,	0,	0,	1};
	colorText[] = {	0.05,	0.95,	0.15,	1};
	colorDisabled[] = {	1,	1,	1,	0.25};
	colorSelection[] = {1, 1, 0, 0.15};
	autocomplete = "";
	text = "";
	size = 0.2;
	tooltipColorText[] = {	1,	1,	1,	1};
	tooltipColorBox[] = {	1,	1,	1,	1};
	tooltipColorShade[] = {	0,	0,	0,	0.65};
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;

};

class DA3F_Btn
{
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	colorBackground[] = {	0,	0,	0,	0.8};
	colorBackgroundFocused[] = {	1,	1,	1,	1};
	colorBackground2[] = {	0.75,	0.75,	0.75,	1};
	color[] = {	1,	1,	1,	1};
	colorFocused[] = {	0,	0,	0,	1};
	color2[] = {	0,	0,	0,	1};
	colorText[] = {	1,	1,	1,	1};
	colorDisabled[] = {	1,	1,	1,	0.25};
	colorSecondary[] = {	1,	1,	1,	1};
	colorFocusedSecondary[] = {	0,	0,	0,	1};
	color2Secondary[] = {	0,	0,	0,	1};
	colorDisabledSecondary[] = {	1,	1,	1,	0.25};
	tooltipColorText[] = {	1,	1,	1,	1};
	tooltipColorBox[] = {	1,	1,	1,	1};
	tooltipColorShade[] = {	0,	0,	0,	0.65};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	shortcuts[] = {};
	
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class TextPos
	{
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};

	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};

	class ShortcutPos
	{
		left = "5.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = 0;
		w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	textSecondary = "";
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaLight";
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
};

class DA3F_Btn_Close: DA3F_Btn
{
	colorBackground[] = {	1,	0,	0,	0.9};
	text = "X";
	OnButtonClick = "closeDialog 0";
};

class DA3F_StructureText
{

	deletable = 0;
	fade = 0;
	access = 0;
	type = 13;
	idc = -1;
	style = 0;

	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
		
	colorText[] = {	1,	1,	1,	1};
	class Attributes
	{
		font = "RobotoCondensed";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 1;
	};
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;

};