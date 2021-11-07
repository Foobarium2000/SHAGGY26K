package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';

	var C0 = "c0";
	var C1 = "c1";
	var C2 = "c2";
	var C3 = "c3";
	var C4 = "c4";
	var C5 = "c5";
	var C6 = "c6";
	var C7 = "c7";
	var C8 = "c8";
	var C9 = "c9";
	var C10 = "c10";
	var C11 = "c11"; 
	var C12 = 'c12';

	var C0_P = "c0-press";
	var C1_P = "c1-press";
	var C2_P = "c2-press";
	var C3_P = "c3-press";
	var C4_P = "c4-press";
	var C5_P = "c5-press";
	var C6_P = "c6-press";
	var C7_P = "c7-press";
	var C8_P = "c8-press";
	var C9_P = "c9-press";
	var C10_P = "c10-press";
	var C11_P = "c11-press"; 
	var C12_P = 'c12-press';

	var C0_R = "c0-release";
	var C1_R = "c1-release";
	var C2_R = "c2-release";
	var C3_R = "c3-release";
	var C4_R = "c4-release";
	var C5_R = "c5-release";
	var C6_R = "c6-release";
	var C7_R = "c7-release";
	var C8_R = "c8-release";
	var C9_R = "c9-release";
	var C10_R = "c10-release";
	var C11_R = "c11-release"; 
	var C12_R = 'c12-release';

	var F0 = "f0";
	var F1 = "f1";
	var F2 = "f2";
	var F3 = "f3";
	var F4 = "f4";
	var F5 = "f5";
	var F6 = "f6";
	var F7 = "f7";
	var F8 = "f8";
	var F9 = "f9";
	var F10 = "f10";
	var F11 = "f11";
	var F12 = "f12";
	var F13 = "f13";
	var F14 = "f14";
	var F15 = "f15";
	var F16 = "f16";
	var F17 = "f17";
	var F18 = "f18";
	var F19 = "f19";
	var F20 = "f20";
	var F21 = "f21";
	var F22 = "f22";
	var F23 = "f23";
	var F24 = "f24";
	var F25 = "f25";

	var F0_P = "f0-press";
	var F1_P = "f1-press";
	var F2_P = "f2-press";
	var F3_P = "f3-press";
	var F4_P = "f4-press";
	var F5_P = "f5-press";
	var F6_P = "f6-press";
	var F7_P = "f7-press";
	var F8_P = "f8-press";
	var F9_P = "f9-press";
	var F10_P = "f10-press";
	var F11_P = "f11-press";
	var F12_P = "f12-press";
	var F13_P = "f13-press";
	var F14_P = "f14-press";
	var F15_P = "f15-press";
	var F16_P = "f16-press";
	var F17_P = "f17-press";
	var F18_P = "f18-press";
	var F19_P = "f19-press";
	var F20_P = "f20-press";
	var F21_P = "f21-press";
	var F22_P = "f22-press";
	var F23_P = "f23-press";
	var F24_P = "f24-press";
	var F25_P = "f25-press";

	var F0_R = "f0-release";
	var F1_R = "f1-release";
	var F2_R = "f2-release";
	var F3_R = "f3-release";
	var F4_R = "f4-release";
	var F5_R = "f5-release";
	var F6_R = "f6-release";
	var F7_R = "f7-release";
	var F8_R = "f8-release";
	var F9_R = "f9-release";
	var F10_R = "f10-release";
	var F11_R = "f11-release";
	var F12_R = "f12-release";
	var F13_R = "f13-release";
	var F14_R = "f14-release";
	var F15_R = "f15-release";
	var F16_R = "f16-release";
	var F17_R = "f17-release";
	var F18_R = "f18-release";
	var F19_R = "f19-release";
	var F20_R = "f20-release";
	var F21_R = "f21-release";
	var F22_R = "f22-release";
	var F23_R = "f23-release";
	var F24_R = "f24-release";
	var F25_R = "f25-release";
}
#else
@:enum
abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';

	var C0 = "c0";
	var C1 = "c1";
	var C2 = "c2";
	var C3 = "c3";
	var C4 = "c4";
	var C5 = "c5";
	var C6 = "c6";
	var C7 = "c7";
	var C8 = "c8";
	var C9 = "c9";
	var C10 = "c10";
	var C11 = "c11"; 
	var C12 = 'c12';

	var C0_P = "c0-press";
	var C1_P = "c1-press";
	var C2_P = "c2-press";
	var C3_P = "c3-press";
	var C4_P = "c4-press";
	var C5_P = "c5-press";
	var C6_P = "c6-press";
	var C7_P = "c7-press";
	var C8_P = "c8-press";
	var C9_P = "c9-press";
	var C10_P = "c10-press";
	var C11_P = "c11-press"; 
	var C12_P = 'c12-press';

	var C0_R = "c0-release";
	var C1_R = "c1-release";
	var C2_R = "c2-release";
	var C3_R = "c3-release";
	var C4_R = "c4-release";
	var C5_R = "c5-release";
	var C6_R = "c6-release";
	var C7_R = "c7-release";
	var C8_R = "c8-release";
	var C9_R = "c9-release";
	var C10_R = "c10-release";
	var C11_R = "c11-release"; 
	var C12_R = 'c12-release';

	var F0 = "f0";
	var F1 = "f1";
	var F2 = "f2";
	var F3 = "f3";
	var F4 = "f4";
	var F5 = "f5";
	var F6 = "f6";
	var F7 = "f7";
	var F8 = "f8";
	var F9 = "f9";
	var F10 = "f10";
	var F11 = "f11";
	var F12 = "f12";
	var F13 = "f13";
	var F14 = "f14";
	var F15 = "f15";
	var F16 = "f16";
	var F17 = "f17";
	var F18 = "f18";
	var F19 = "f19";
	var F20 = "f20";
	var F21 = "f21";
	var F22 = "f22";
	var F23 = "f23";
	var F24 = "f24";
	var F25 = "f25";

	var F0_P = "f0-press";
	var F1_P = "f1-press";
	var F2_P = "f2-press";
	var F3_P = "f3-press";
	var F4_P = "f4-press";
	var F5_P = "f5-press";
	var F6_P = "f6-press";
	var F7_P = "f7-press";
	var F8_P = "f8-press";
	var F9_P = "f9-press";
	var F10_P = "f10-press";
	var F11_P = "f11-press";
	var F12_P = "f12-press";
	var F13_P = "f13-press";
	var F14_P = "f14-press";
	var F15_P = "f15-press";
	var F16_P = "f16-press";
	var F17_P = "f17-press";
	var F18_P = "f18-press";
	var F19_P = "f19-press";
	var F20_P = "f20-press";
	var F21_P = "f21-press";
	var F22_P = "f22-press";
	var F23_P = "f23-press";
	var F24_P = "f24-press";
	var F25_P = "f25-press";

	var F0_R = "f0-release";
	var F1_R = "f1-release";
	var F2_R = "f2-release";
	var F3_R = "f3-release";
	var F4_R = "f4-release";
	var F5_R = "f5-release";
	var F6_R = "f6-release";
	var F7_R = "f7-release";
	var F8_R = "f8-release";
	var F9_R = "f9-release";
	var F10_R = "f10-release";
	var F11_R = "f11-release";
	var F12_R = "f12-release";
	var F13_R = "f13-release";
	var F14_R = "f14-release";
	var F15_R = "f15-release";
	var F16_R = "f16-release";
	var F17_R = "f17-release";
	var F18_R = "f18-release";
	var F19_R = "f19-release";
	var F20_R = "f20-release";
	var F21_R = "f21-release";
	var F22_R = "f22-release";
	var F23_R = "f23-release";
	var F24_R = "f24-release";
	var F25_R = "f25-release";	
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;

	A1;
	A2;
	A3;
	A4;
	A5;
	A6;
	A7;

	B1;
	B2;
	B3;
	B4;
	B5;
	B6;
	B7;
	B8;
	B9;

	C0;
	C1;
	C2;
	C3;
	C4;
	C5;
	C6;
	C7;
	C8;
	C9;
	C10;
	C11;
	C12;

	F0;
	F1;
	F2;
	F3;
	F4;
	F5;
	F6;
	F7;
	F8;
	F9;
	F10;
	F11;
	F12;
	F13;
	F14;
	F15;
	F16;
	F17;
	F18;
	F19;
	F20;
	F21;
	F22;
	F23;
	F24;
	F25;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);

	var _a1 = new FlxActionDigital(Action.A1);
	var _a2 = new FlxActionDigital(Action.A2);
	var _a3 = new FlxActionDigital(Action.A3);
	var _a4 = new FlxActionDigital(Action.A4);
	var _a5 = new FlxActionDigital(Action.A5);
	var _a6 = new FlxActionDigital(Action.A6);
	var _a7 = new FlxActionDigital(Action.A7);

	var _a1P = new FlxActionDigital(Action.A1_P);
	var _a2P = new FlxActionDigital(Action.A2_P);
	var _a3P = new FlxActionDigital(Action.A3_P);
	var _a4P = new FlxActionDigital(Action.A4_P);
	var _a5P = new FlxActionDigital(Action.A5_P);
	var _a6P = new FlxActionDigital(Action.A6_P);
	var _a7P = new FlxActionDigital(Action.A7_P);

	var _a1R = new FlxActionDigital(Action.A1_R);
	var _a2R = new FlxActionDigital(Action.A2_R);
	var _a3R = new FlxActionDigital(Action.A3_R);
	var _a4R = new FlxActionDigital(Action.A4_R);
	var _a5R = new FlxActionDigital(Action.A5_R);
	var _a6R = new FlxActionDigital(Action.A6_R);
	var _a7R = new FlxActionDigital(Action.A7_R);


	var _b1 = new FlxActionDigital(Action.B1);
	var _b2 = new FlxActionDigital(Action.B2);
	var _b3 = new FlxActionDigital(Action.B3);
	var _b4 = new FlxActionDigital(Action.B4);
	var _b5 = new FlxActionDigital(Action.B5);
	var _b6 = new FlxActionDigital(Action.B6);
	var _b7 = new FlxActionDigital(Action.B7);
	var _b8 = new FlxActionDigital(Action.B8);
	var _b9 = new FlxActionDigital(Action.B9);

	var _b1P = new FlxActionDigital(Action.B1_P);
	var _b2P = new FlxActionDigital(Action.B2_P);
	var _b3P = new FlxActionDigital(Action.B3_P);
	var _b4P = new FlxActionDigital(Action.B4_P);
	var _b5P = new FlxActionDigital(Action.B5_P);
	var _b6P = new FlxActionDigital(Action.B6_P);
	var _b7P = new FlxActionDigital(Action.B7_P);
	var _b8P = new FlxActionDigital(Action.B8_P);
	var _b9P = new FlxActionDigital(Action.B9_P);

	var _b1R = new FlxActionDigital(Action.B1_R);
	var _b2R = new FlxActionDigital(Action.B2_R);
	var _b3R = new FlxActionDigital(Action.B3_R);
	var _b4R = new FlxActionDigital(Action.B4_R);
	var _b5R = new FlxActionDigital(Action.B5_R);
	var _b6R = new FlxActionDigital(Action.B6_R);
	var _b7R = new FlxActionDigital(Action.B7_R);
	var _b8R = new FlxActionDigital(Action.B8_R);
	var _b9R = new FlxActionDigital(Action.B9_R);

	var _c0 = new FlxActionDigital(Action.C0);
	var _c1 = new FlxActionDigital(Action.C1);
	var _c2 = new FlxActionDigital(Action.C2);
	var _c3 = new FlxActionDigital(Action.C3);
	var _c4 = new FlxActionDigital(Action.C4);
	var _c5 = new FlxActionDigital(Action.C5);
	var _c6 = new FlxActionDigital(Action.C6);
	var _c7 = new FlxActionDigital(Action.C7);
	var _c8 = new FlxActionDigital(Action.C8);
	var _c9 = new FlxActionDigital(Action.C9);
	var _c10 = new FlxActionDigital(Action.C10);
	var _c11 = new FlxActionDigital(Action.C11);
	var _c12 = new FlxActionDigital(Action.C12);

	var _c0P = new FlxActionDigital(Action.C0_P);
	var _c1P = new FlxActionDigital(Action.C1_P);
	var _c2P = new FlxActionDigital(Action.C2_P);
	var _c3P = new FlxActionDigital(Action.C3_P);
	var _c4P = new FlxActionDigital(Action.C4_P);
	var _c5P = new FlxActionDigital(Action.C5_P);
	var _c6P = new FlxActionDigital(Action.C6_P);
	var _c7P = new FlxActionDigital(Action.C7_P);
	var _c8P = new FlxActionDigital(Action.C8_P);
	var _c9P = new FlxActionDigital(Action.C9_P);
	var _c10P = new FlxActionDigital(Action.C10_P);
	var _c11P = new FlxActionDigital(Action.C11_P);
	var _c12P = new FlxActionDigital(Action.C12_P);

	var _c0R = new FlxActionDigital(Action.C0_R);
	var _c1R = new FlxActionDigital(Action.C1_R);
	var _c2R = new FlxActionDigital(Action.C2_R);
	var _c3R = new FlxActionDigital(Action.C3_R);
	var _c4R = new FlxActionDigital(Action.C4_R);
	var _c5R = new FlxActionDigital(Action.C5_R);
	var _c6R = new FlxActionDigital(Action.C6_R);
	var _c7R = new FlxActionDigital(Action.C7_R);
	var _c8R = new FlxActionDigital(Action.C8_R);
	var _c9R = new FlxActionDigital(Action.C9_R);
	var _c10R = new FlxActionDigital(Action.C10_R);
	var _c11R = new FlxActionDigital(Action.C11_R);
	var _c12R = new FlxActionDigital(Action.C12_R);

	var _f0 = new FlxActionDigital(Action.F0);
	var _f1 = new FlxActionDigital(Action.F1);
	var _f2 = new FlxActionDigital(Action.F2);
	var _f3 = new FlxActionDigital(Action.F3);
	var _f4 = new FlxActionDigital(Action.F4);
	var _f5 = new FlxActionDigital(Action.F5);
	var _f6 = new FlxActionDigital(Action.F6);
	var _f7 = new FlxActionDigital(Action.F7);
	var _f8 = new FlxActionDigital(Action.F8);
	var _f9 = new FlxActionDigital(Action.F9);
	var _f10 = new FlxActionDigital(Action.F10);
	var _f11 = new FlxActionDigital(Action.F11);
	var _f12 = new FlxActionDigital(Action.F12);
	var _f13 = new FlxActionDigital(Action.F13);
	var _f14 = new FlxActionDigital(Action.F14);
	var _f15 = new FlxActionDigital(Action.F15);
	var _f16 = new FlxActionDigital(Action.F16);
	var _f17 = new FlxActionDigital(Action.F17);
	var _f18 = new FlxActionDigital(Action.F18);
	var _f19 = new FlxActionDigital(Action.F19);
	var _f20 = new FlxActionDigital(Action.F20);
	var _f21 = new FlxActionDigital(Action.F21);
	var _f22 = new FlxActionDigital(Action.F22);
	var _f23 = new FlxActionDigital(Action.F23);
	var _f24 = new FlxActionDigital(Action.F24);
	var _f25 = new FlxActionDigital(Action.F25);

	var _f0P = new FlxActionDigital(Action.F0_P);
	var _f1P = new FlxActionDigital(Action.F1_P);
	var _f2P = new FlxActionDigital(Action.F2_P);
	var _f3P = new FlxActionDigital(Action.F3_P);
	var _f4P = new FlxActionDigital(Action.F4_P);
	var _f5P = new FlxActionDigital(Action.F5_P);
	var _f6P = new FlxActionDigital(Action.F6_P);
	var _f7P = new FlxActionDigital(Action.F7_P);
	var _f8P = new FlxActionDigital(Action.F8_P);
	var _f9P = new FlxActionDigital(Action.F9_P);
	var _f10P = new FlxActionDigital(Action.F10_P);
	var _f11P = new FlxActionDigital(Action.F11_P);
	var _f12P = new FlxActionDigital(Action.F12_P);
	var _f13P = new FlxActionDigital(Action.F13_P);
	var _f14P = new FlxActionDigital(Action.F14_P);
	var _f15P = new FlxActionDigital(Action.F15_P);
	var _f16P = new FlxActionDigital(Action.F16_P);
	var _f17P = new FlxActionDigital(Action.F17_P);
	var _f18P = new FlxActionDigital(Action.F18_P);
	var _f19P = new FlxActionDigital(Action.F19_P);
	var _f20P = new FlxActionDigital(Action.F20_P);
	var _f21P = new FlxActionDigital(Action.F21_P);
	var _f22P = new FlxActionDigital(Action.F22_P);
	var _f23P = new FlxActionDigital(Action.F23_P);
	var _f24P = new FlxActionDigital(Action.F24_P);
	var _f25P = new FlxActionDigital(Action.F25_P);

	var _f0R = new FlxActionDigital(Action.F0_R);
	var _f1R = new FlxActionDigital(Action.F1_R);
	var _f2R = new FlxActionDigital(Action.F2_R);
	var _f3R = new FlxActionDigital(Action.F3_R);
	var _f4R = new FlxActionDigital(Action.F4_R);
	var _f5R = new FlxActionDigital(Action.F5_R);
	var _f6R = new FlxActionDigital(Action.F6_R);
	var _f7R = new FlxActionDigital(Action.F7_R);
	var _f8R = new FlxActionDigital(Action.F8_R);
	var _f9R = new FlxActionDigital(Action.F9_R);
	var _f10R = new FlxActionDigital(Action.F10_R);
	var _f11R = new FlxActionDigital(Action.F11_R);
	var _f12R = new FlxActionDigital(Action.F12_R);
	var _f13R = new FlxActionDigital(Action.F13_R);
	var _f14R = new FlxActionDigital(Action.F14_R);
	var _f15R = new FlxActionDigital(Action.F15_R);
	var _f16R = new FlxActionDigital(Action.F16_R);
	var _f17R = new FlxActionDigital(Action.F17_R);
	var _f18R = new FlxActionDigital(Action.F18_R);
	var _f19R = new FlxActionDigital(Action.F19_R);
	var _f20R = new FlxActionDigital(Action.F20_R);
	var _f21R = new FlxActionDigital(Action.F21_R);
	var _f22R = new FlxActionDigital(Action.F22_R);
	var _f23R = new FlxActionDigital(Action.F23_R);
	var _f24R = new FlxActionDigital(Action.F24_R);
	var _f25R = new FlxActionDigital(Action.F25_R);


	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var A1(get, never):Bool; inline function get_A1() {return _a1.check();}
	public var A2(get, never):Bool; inline function get_A2() {return _a2.check();}
	public var A3(get, never):Bool; inline function get_A3() {return _a3.check();}
	public var A4(get, never):Bool; inline function get_A4() {return _a4.check();}
	public var A5(get, never):Bool; inline function get_A5() {return _a5.check();}
	public var A6(get, never):Bool; inline function get_A6() {return _a6.check();}
	public var A7(get, never):Bool; inline function get_A7() {return _a7.check();}

	public var A1_P(get, never):Bool; inline function get_A1_P() {return _a1P.check();}
	public var A2_P(get, never):Bool; inline function get_A2_P() {return _a2P.check();}
	public var A3_P(get, never):Bool; inline function get_A3_P() {return _a3P.check();}
	public var A4_P(get, never):Bool; inline function get_A4_P() {return _a4P.check();}
	public var A5_P(get, never):Bool; inline function get_A5_P() {return _a5P.check();}
	public var A6_P(get, never):Bool; inline function get_A6_P() {return _a6P.check();}
	public var A7_P(get, never):Bool; inline function get_A7_P() {return _a7P.check();}

	public var A1_R(get, never):Bool; inline function get_A1_R() {return _a1R.check();}
	public var A2_R(get, never):Bool; inline function get_A2_R() {return _a2R.check();}
	public var A3_R(get, never):Bool; inline function get_A3_R() {return _a3R.check();}
	public var A4_R(get, never):Bool; inline function get_A4_R() {return _a4R.check();}
	public var A5_R(get, never):Bool; inline function get_A5_R() {return _a5R.check();}
	public var A6_R(get, never):Bool; inline function get_A6_R() {return _a6R.check();}
	public var A7_R(get, never):Bool; inline function get_A7_R() {return _a7R.check();}


	public var B1(get, never):Bool; inline function get_B1() {return _b1.check();}
	public var B2(get, never):Bool; inline function get_B2() {return _b2.check();}
	public var B3(get, never):Bool; inline function get_B3() {return _b3.check();}
	public var B4(get, never):Bool; inline function get_B4() {return _b4.check();}
	public var B5(get, never):Bool; inline function get_B5() {return _b5.check();}
	public var B6(get, never):Bool; inline function get_B6() {return _b6.check();}
	public var B7(get, never):Bool; inline function get_B7() {return _b7.check();}
	public var B8(get, never):Bool; inline function get_B8() {return _b8.check();}
	public var B9(get, never):Bool; inline function get_B9() {return _b9.check();}

	public var B1_P(get, never):Bool; inline function get_B1_P() {return _b1P.check();}
	public var B2_P(get, never):Bool; inline function get_B2_P() {return _b2P.check();}
	public var B3_P(get, never):Bool; inline function get_B3_P() {return _b3P.check();}
	public var B4_P(get, never):Bool; inline function get_B4_P() {return _b4P.check();}
	public var B5_P(get, never):Bool; inline function get_B5_P() {return _b5P.check();}
	public var B6_P(get, never):Bool; inline function get_B6_P() {return _b6P.check();}
	public var B7_P(get, never):Bool; inline function get_B7_P() {return _b7P.check();}
	public var B8_P(get, never):Bool; inline function get_B8_P() {return _b8P.check();}
	public var B9_P(get, never):Bool; inline function get_B9_P() {return _b9P.check();}

	public var B1_R(get, never):Bool; inline function get_B1_R() {return _b1R.check();}
	public var B2_R(get, never):Bool; inline function get_B2_R() {return _b2R.check();}
	public var B3_R(get, never):Bool; inline function get_B3_R() {return _b3R.check();}
	public var B4_R(get, never):Bool; inline function get_B4_R() {return _b4R.check();}
	public var B5_R(get, never):Bool; inline function get_B5_R() {return _b5R.check();}
	public var B6_R(get, never):Bool; inline function get_B6_R() {return _b6R.check();}
	public var B7_R(get, never):Bool; inline function get_B7_R() {return _b7R.check();}
	public var B8_R(get, never):Bool; inline function get_B8_R() {return _b8R.check();}
	public var B9_R(get, never):Bool; inline function get_B9_R() {return _b9R.check();}

	public var C0 (get, never):Bool; inline function get_C0() {return _c0.check();}
	public var C1 (get, never):Bool; inline function get_C1() {return _c1.check();}
	public var C2 (get, never):Bool; inline function get_C2() {return _c2.check();}
	public var C3 (get, never):Bool; inline function get_C3() {return _c3.check();}
	public var C4 (get, never):Bool; inline function get_C4() {return _c4.check();}
	public var C5 (get, never):Bool; inline function get_C5() {return _c5.check();}
	public var C6 (get, never):Bool; inline function get_C6() {return _c6.check();}
	public var C7 (get, never):Bool; inline function get_C7() {return _c7.check();}
	public var C8 (get, never):Bool; inline function get_C8() {return _c8.check();}
	public var C9 (get, never):Bool; inline function get_C9() {return _c9.check();}
	public var C10 (get, never):Bool; inline function get_C10() {return _c10.check();}
	public var C11 (get, never):Bool; inline function get_C11() {return _c11.check();}
	public var C12 (get, never):Bool; inline function get_C12() {return _c12.check();}

	public var C0_P (get, never):Bool; inline function get_C0_P() {return _c0P.check();}
	public var C1_P (get, never):Bool; inline function get_C1_P() {return _c1P.check();}
	public var C2_P (get, never):Bool; inline function get_C2_P() {return _c2P.check();}
	public var C3_P (get, never):Bool; inline function get_C3_P() {return _c3P.check();}
	public var C4_P (get, never):Bool; inline function get_C4_P() {return _c4P.check();}
	public var C5_P (get, never):Bool; inline function get_C5_P() {return _c5P.check();}
	public var C6_P (get, never):Bool; inline function get_C6_P() {return _c6P.check();}
	public var C7_P (get, never):Bool; inline function get_C7_P() {return _c7P.check();}
	public var C8_P (get, never):Bool; inline function get_C8_P() {return _c8P.check();}
	public var C9_P (get, never):Bool; inline function get_C9_P() {return _c9P.check();}
	public var C10_P (get, never):Bool; inline function get_C10_P() {return _c10P.check();}
	public var C11_P (get, never):Bool; inline function get_C11_P() {return _c11P.check();}
	public var C12_P (get, never):Bool; inline function get_C12_P() {return _c12P.check();}

	public var C0_R (get, never):Bool; inline function get_C0_R() {return _c0R.check();}
	public var C1_R (get, never):Bool; inline function get_C1_R() {return _c1R.check();}
	public var C2_R (get, never):Bool; inline function get_C2_R() {return _c2R.check();}
	public var C3_R (get, never):Bool; inline function get_C3_R() {return _c3R.check();}
	public var C4_R (get, never):Bool; inline function get_C4_R() {return _c4R.check();}
	public var C5_R (get, never):Bool; inline function get_C5_R() {return _c5R.check();}
	public var C6_R (get, never):Bool; inline function get_C6_R() {return _c6R.check();}
	public var C7_R (get, never):Bool; inline function get_C7_R() {return _c7R.check();}
	public var C8_R (get, never):Bool; inline function get_C8_R() {return _c8R.check();}
	public var C9_R (get, never):Bool; inline function get_C9_R() {return _c9R.check();}
	public var C10_R (get, never):Bool; inline function get_C10_R() {return _c10R.check();}
	public var C11_R (get, never):Bool; inline function get_C11_R() {return _c11R.check();}
	public var C12_R (get, never):Bool; inline function get_C12_R() {return _c12R.check();}
	
	public var F0(get, never):Bool; inline function get_F0() {return _f0.check();}
	public var F1(get, never):Bool; inline function get_F1() {return _f1.check();}
	public var F2(get, never):Bool; inline function get_F2() {return _f2.check();}
	public var F3(get, never):Bool; inline function get_F3() {return _f3.check();} 
	public var F4(get, never):Bool; inline function get_F4() {return _f4.check();}
	public var F5(get, never):Bool; inline function get_F5() {return _f5.check();}
	public var F6(get, never):Bool; inline function get_F6() {return _f6.check();}
	public var F7(get, never):Bool; inline function get_F7() {return _f7.check();}
	public var F8(get, never):Bool; inline function get_F8() {return _f8.check();}
	public var F9(get, never):Bool; inline function get_F9() {return _f9.check();}
	public var F10(get, never):Bool; inline function get_F10() {return _f10.check();}
	public var F11(get, never):Bool; inline function get_F11() {return _f11.check();}
	public var F12(get, never):Bool; inline function get_F12() {return _f12.check();}
	public var F13(get, never):Bool; inline function get_F13() {return _f13.check();}
	public var F14(get, never):Bool; inline function get_F14() {return _f14.check();}
	public var F15(get, never):Bool; inline function get_F15() {return _f15.check();}
	public var F16(get, never):Bool; inline function get_F16() {return _f16.check();}
	public var F17(get, never):Bool; inline function get_F17() {return _f17.check();}
	public var F18(get, never):Bool; inline function get_F18() {return _f18.check();}
	public var F19(get, never):Bool; inline function get_F19() {return _f19.check();}
	public var F20(get, never):Bool; inline function get_F20() {return _f20.check();}
	public var F21(get, never):Bool; inline function get_F21() {return _f21.check();}
	public var F22(get, never):Bool; inline function get_F22() {return _f22.check();}
	public var F23(get, never):Bool; inline function get_F23() {return _f23.check();}
	public var F24(get, never):Bool; inline function get_F24() {return _f24.check();}
	public var F25(get, never):Bool; inline function get_F25() {return _f25.check();}

	public var F0_P(get, never):Bool; inline function get_F0_P() {return _f0P.check();}
	public var F1_P(get, never):Bool; inline function get_F1_P() {return _f1P.check();}
	public var F2_P(get, never):Bool; inline function get_F2_P() {return _f2P.check();}
	public var F3_P(get, never):Bool; inline function get_F3_P() {return _f3P.check();}
	public var F4_P(get, never):Bool; inline function get_F4_P() {return _f4P.check();}
	public var F5_P(get, never):Bool; inline function get_F5_P() {return _f5P.check();}
	public var F6_P(get, never):Bool; inline function get_F6_P() {return _f6P.check();}
	public var F7_P(get, never):Bool; inline function get_F7_P() {return _f7P.check();}
	public var F8_P(get, never):Bool; inline function get_F8_P() {return _f8P.check();}
	public var F9_P(get, never):Bool; inline function get_F9_P() {return _f9P.check();}
	public var F10_P(get, never):Bool; inline function get_F10_P() {return _f10P.check();}
	public var F11_P(get, never):Bool; inline function get_F11_P() {return _f11P.check();}
	public var F12_P(get, never):Bool; inline function get_F12_P() {return _f12P.check();}
	public var F13_P(get, never):Bool; inline function get_F13_P() {return _f13P.check();}
	public var F14_P(get, never):Bool; inline function get_F14_P() {return _f14P.check();}
	public var F15_P(get, never):Bool; inline function get_F15_P() {return _f15P.check();}
	public var F16_P(get, never):Bool; inline function get_F16_P() {return _f16P.check();}
	public var F17_P(get, never):Bool; inline function get_F17_P() {return _f17P.check();}
	public var F18_P(get, never):Bool; inline function get_F18_P() {return _f18P.check();}
	public var F19_P(get, never):Bool; inline function get_F19_P() {return _f19P.check();}
	public var F20_P(get, never):Bool; inline function get_F20_P() {return _f20P.check();}
	public var F21_P(get, never):Bool; inline function get_F21_P() {return _f21P.check();}
	public var F22_P(get, never):Bool; inline function get_F22_P() {return _f22P.check();}
	public var F23_P(get, never):Bool; inline function get_F23_P() {return _f23P.check();}
	public var F24_P(get, never):Bool; inline function get_F24_P() {return _f24P.check();}
	public var F25_P(get, never):Bool; inline function get_F25_P() {return _f25P.check();}

	public var F0_R(get, never):Bool; inline function get_F0_R() {return _f0R.check();}
	public var F1_R(get, never):Bool; inline function get_F1_R() {return _f1R.check();}
	public var F2_R(get, never):Bool; inline function get_F2_R() {return _f2R.check();}
	public var F3_R(get, never):Bool; inline function get_F3_R() {return _f3R.check();}
	public var F4_R(get, never):Bool; inline function get_F4_R() {return _f4R.check();}
	public var F5_R(get, never):Bool; inline function get_F5_R() {return _f5R.check();}
	public var F6_R(get, never):Bool; inline function get_F6_R() {return _f6R.check();}
	public var F7_R(get, never):Bool; inline function get_F7_R() {return _f7R.check();}
	public var F8_R(get, never):Bool; inline function get_F8_R() {return _f8R.check();}
	public var F9_R(get, never):Bool; inline function get_F9_R() {return _f9R.check();}
	public var F10_R(get, never):Bool; inline function get_F10_R() {return _f10R.check();}
	public var F11_R(get, never):Bool; inline function get_F11_R() {return _f11R.check();}
	public var F12_R(get, never):Bool; inline function get_F12_R() {return _f12R.check();}
	public var F13_R(get, never):Bool; inline function get_F13_R() {return _f13R.check();}
	public var F14_R(get, never):Bool; inline function get_F14_R() {return _f14R.check();}
	public var F15_R(get, never):Bool; inline function get_F15_R() {return _f15R.check();}
	public var F16_R(get, never):Bool; inline function get_F16_R() {return _f16R.check();}
	public var F17_R(get, never):Bool; inline function get_F17_R() {return _f17R.check();}
	public var F18_R(get, never):Bool; inline function get_F18_R() {return _f18R.check();}
	public var F19_R(get, never):Bool; inline function get_F19_R() {return _f19R.check();}
	public var F20_R(get, never):Bool; inline function get_F20_R() {return _f20R.check();}
	public var F21_R(get, never):Bool; inline function get_F21_R() {return _f21R.check();}
	public var F22_R(get, never):Bool; inline function get_F22_R() {return _f22R.check();}
	public var F23_R(get, never):Bool; inline function get_F23_R() {return _f23R.check();}
	public var F24_R(get, never):Bool; inline function get_F24_R() {return _f24R.check();}
	public var F25_R(get, never):Bool; inline function get_F25_R() {return _f25R.check();}

	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		add(_c1);
		add(_c2);
		add(_c3);
		add(_c4);
		add(_c5);
		add(_c6);
		add(_c7);
		add(_c8);
		add(_c9);
		add(_c10);
		add(_c11);
		add(_c12);

		add(_c1P);
		add(_c2P);
		add(_c3P);
		add(_c4P);
		add(_c5P);
		add(_c6P);
		add(_c7P);
		add(_c8P);
		add(_c9P);
		add(_c10P);
		add(_c11P);
		add(_c12P);

		add(_c1R);
		add(_c2R);
		add(_c3R);
		add(_c4R);
		add(_c5R);
		add(_c6R);
		add(_c7R);
		add(_c8R);
		add(_c9R);
		add(_c10R);
		add(_c11R);
		add(_c12R);
		
		add(_f0);
		add(_f1);
		add(_f2);
		add(_f3);
		add(_f4);
		add(_f5);
		add(_f6);
		add(_f7);
		add(_f8);
		add(_f9);
		add(_f10);
		add(_f11);
		add(_f12);
		add(_f13);
		add(_f14);
		add(_f15);
		add(_f16);
		add(_f17);
		add(_f18);
		add(_f19);
		add(_f20);
		add(_f21);
		add(_f22);
		add(_f23);
		add(_f24);
		add(_f25);

		add(_f0P);
		add(_f1P);
		add(_f2P);
		add(_f3P);
		add(_f4P);
		add(_f5P);
		add(_f6P);
		add(_f7P);
		add(_f8P);
		add(_f9P);
		add(_f10P);
		add(_f11P);
		add(_f12P);
		add(_f13P);
		add(_f14P);
		add(_f15P);
		add(_f16P);
		add(_f17P);
		add(_f18P);
		add(_f19P);
		add(_f20P);
		add(_f21P);
		add(_f22P);
		add(_f23P);
		add(_f24P);
		add(_f25P);

		add(_f0R);
		add(_f1R);
		add(_f2R);
		add(_f3R);
		add(_f4R);
		add(_f5R);
		add(_f6R);
		add(_f7R);
		add(_f8R);
		add(_f9R);
		add(_f10R);
		add(_f11R);
		add(_f12R);
		add(_f13R);
		add(_f14R);
		add(_f15R);
		add(_f16R);
		add(_f17R);
		add(_f18R);
		add(_f19R);
		add(_f20R);
		add(_f21R);
		add(_f22R);
		add(_f23R);
		add(_f24R);
		add(_f25R);

		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		add(_f0);
		add(_f1);
		add(_f2);
		add(_f3);
		add(_f4);
		add(_f5);
		add(_f6);
		add(_f7);
		add(_f8);
		add(_f9);
		add(_f10);
		add(_f11);
		add(_f12);
		add(_f13);
		add(_f14);
		add(_f15);
		add(_f16);
		add(_f17);
		add(_f18);
		add(_f19);
		add(_f20);
		add(_f21);
		add(_f22);
		add(_f23);
		add(_f24);
		add(_f25);

		add(_f0P);
		add(_f1P);
		add(_f2P);
		add(_f3P);
		add(_f4P);
		add(_f5P);
		add(_f6P);
		add(_f7P);
		add(_f8P);
		add(_f9P);
		add(_f10P);
		add(_f11P);
		add(_f12P);
		add(_f13P);
		add(_f14P);
		add(_f15P);
		add(_f16P);
		add(_f17P);
		add(_f18P);
		add(_f19P);
		add(_f20P);
		add(_f21P);
		add(_f22P);
		add(_f23P);
		add(_f24P);
		add(_f25P);

		add(_f0R);
		add(_f1R);
		add(_f2R);
		add(_f3R);
		add(_f4R);
		add(_f5R);
		add(_f6R);
		add(_f7R);
		add(_f8R);
		add(_f9R);
		add(_f10R);
		add(_f11R);
		add(_f12R);
		add(_f13R);
		add(_f14R);
		add(_f15R);
		add(_f16R);
		add(_f17R);
		add(_f18R);
		add(_f19R);
		add(_f20R);
		add(_f21R);
		add(_f22R);
		add(_f23R);
		add(_f24R);
		add(_f25R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;

			case A1: _a1;
			case A2: _a2;
			case A3: _a3;
			case A4: _a4;
			case A5: _a5;
			case A6: _a6;
			case A7: _a7;


			case B1: _b1;
			case B2: _b2;
			case B3: _b3;
			case B4: _b4;
			case B5: _b5;
			case B6: _b6;
			case B7: _b7;
			case B8: _b8;
			case B9: _b9;

			case C0: _c0;
			case C1: _c1;
			case C2: _c2;
			case C3: _c3;
			case C4: _c4;
			case C5: _c5;
			case C6: _c6;
			case C7: _c7;
			case C8: _c8;
			case C9: _c9;
			case C10: _c10;
			case C11: _c11;
			case C12: _c12;

			case F0: _f0;
			case F1: _f1;
			case F2: _f2;
			case F3: _f3;
			case F4: _f4;
			case F5: _f5;
			case F6: _f6;
			case F7: _f7;
			case F8: _f8;
			case F9: _f9;
			case F10: _f10;
			case F11: _f11;
			case F12: _f12;
			case F13: _f13;
			case F14: _f14;
			case F15: _f15;
			case F16: _f16;
			case F17: _f17;
			case F18: _f18;
			case F19: _f19;
			case F20: _f20;
			case F21: _f21;
			case F22: _f22;
			case F23: _f23;
			case F24: _f24;
			case F25: _f25;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);

			case A1:
				func(_a1, PRESSED);
				func(_a1P, JUST_PRESSED);
				func(_a1R, JUST_RELEASED);
			case A2:
				func(_a2, PRESSED);
				func(_a2P, JUST_PRESSED);
				func(_a2R, JUST_RELEASED);
			case A3:
				func(_a3, PRESSED);
				func(_a3P, JUST_PRESSED);
				func(_a3R, JUST_RELEASED);
			case A4:
				func(_a4, PRESSED);
				func(_a4P, JUST_PRESSED);
				func(_a4R, JUST_RELEASED);
			case A5:
				func(_a5, PRESSED);
				func(_a5P, JUST_PRESSED);
				func(_a5R, JUST_RELEASED);
			case A6:
				func(_a6, PRESSED);
				func(_a6P, JUST_PRESSED);
				func(_a6R, JUST_RELEASED);
			case A7:
				func(_a7, PRESSED);
				func(_a7P, JUST_PRESSED);
				func(_a7R, JUST_RELEASED);


			case B1:
				func(_b1, PRESSED);
				func(_b1P, JUST_PRESSED);
				func(_b1R, JUST_RELEASED);
			case B2:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B3:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B4:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B5:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B6:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B7:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B8:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B9:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);

			case C0:
				func(_c0, PRESSED);
				func(_c0P, JUST_PRESSED);
				func(_c0R, JUST_RELEASED);				
			case C1:
				func(_c1, PRESSED);
				func(_c1P, JUST_PRESSED);
				func(_c1R, JUST_RELEASED);
			case C2:
				func(_c2, PRESSED);
				func(_c2P, JUST_PRESSED);
				func(_c2R, JUST_RELEASED);
			case C3:
				func(_c3, PRESSED);
				func(_c3P, JUST_PRESSED);
				func(_c3R, JUST_RELEASED);
			case C4:
				func(_c4, PRESSED);
				func(_c4P, JUST_PRESSED);
				func(_c4R, JUST_RELEASED);
			case C5:
				func(_c5, PRESSED);
				func(_c5P, JUST_PRESSED);
				func(_c5R, JUST_RELEASED);
			case C6:
				func(_c6, PRESSED);
				func(_c6P, JUST_PRESSED);
				func(_c6R, JUST_RELEASED);
			case C7:
				func(_c7, PRESSED);
				func(_c7P, JUST_PRESSED);
				func(_c7R, JUST_RELEASED);
			case C8:
				func(_c8, PRESSED);
				func(_c8P, JUST_PRESSED);
				func(_c8R, JUST_RELEASED);
			case C9:
				func(_c9, PRESSED);
				func(_c9P, JUST_PRESSED);
				func(_c9R, JUST_RELEASED);
			case C10:
				func(_c10, PRESSED);
				func(_c10P, JUST_PRESSED);
				func(_c10R, JUST_RELEASED);
			case C11:
				func(_c11, PRESSED);
				func(_c11P, JUST_PRESSED);
				func(_c11R, JUST_RELEASED);
			case C12:
				func(_c12, PRESSED);
				func(_c12P, JUST_PRESSED);
				func(_c12R, JUST_RELEASED);
				
	
			case F0:
				func(_f0, PRESSED);
				func(_f0P, JUST_PRESSED);
				func(_f0R, JUST_RELEASED);
			case F1:
				func(_f1, PRESSED);
				func(_f1P, JUST_PRESSED);
				func(_f1R, JUST_RELEASED);
			case F2:
				func(_f2, PRESSED);
				func(_f2P, JUST_PRESSED);
				func(_f2R, JUST_RELEASED);
			case F3:
				func(_f3, PRESSED);
				func(_f3P, JUST_PRESSED);
				func(_f3R, JUST_RELEASED);
			case F4:
				func(_f4, PRESSED);
				func(_f4P, JUST_PRESSED);
				func(_f4R, JUST_RELEASED);					
			case F5:
				func(_f5, PRESSED);
				func(_f5P, JUST_PRESSED);
				func(_f5R, JUST_RELEASED);
			case F6:
				func(_f6, PRESSED);
				func(_f6P, JUST_PRESSED);
				func(_f6R, JUST_RELEASED);
			case F7:
				func(_f7, PRESSED);
				func(_f7P, JUST_PRESSED);
				func(_f7R, JUST_RELEASED);
			case F8:
				func(_f8, PRESSED);
				func(_f8P, JUST_PRESSED);
				func(_f8R, JUST_RELEASED);
			case F9:
				func(_f9, PRESSED);
				func(_f9P, JUST_PRESSED);
				func(_f9R, JUST_RELEASED);
			case F10:
				func(_f10, PRESSED);
				func(_f10P, JUST_PRESSED);
				func(_f10R, JUST_RELEASED);												
			case F11:
				func(_f11, PRESSED);
				func(_f11P, JUST_PRESSED);
				func(_f11R, JUST_RELEASED);
			case F12:
				func(_f12, PRESSED);
				func(_f12P, JUST_PRESSED);
				func(_f12R, JUST_RELEASED);	
			case F13:
				func(_f13, PRESSED);
				func(_f13P, JUST_PRESSED);
				func(_f13R, JUST_RELEASED);
			case F14:
				func(_f14, PRESSED);
				func(_f14P, JUST_PRESSED);
				func(_f14R, JUST_RELEASED);
			case F15:
				func(_f15, PRESSED);
				func(_f15P, JUST_PRESSED);
				func(_f15R, JUST_RELEASED);
			case F16:
				func(_f16, PRESSED);
				func(_f16P, JUST_PRESSED);
				func(_f16R, JUST_RELEASED);
			case F17:
				func(_f17, PRESSED);
				func(_f17P, JUST_PRESSED);
				func(_f17R, JUST_RELEASED);
			case F18:
				func(_f18, PRESSED);
				func(_f18P, JUST_PRESSED);
				func(_f18R, JUST_RELEASED);
			case F19:
				func(_f19, PRESSED);
				func(_f19P, JUST_PRESSED);
				func(_f19R, JUST_RELEASED);
			case F20:
				func(_f20, PRESSED);
				func(_f20P, JUST_PRESSED);
				func(_f20R, JUST_RELEASED);
			case F21:
				func(_f21, PRESSED);
				func(_f21P, JUST_PRESSED);
				func(_f21R, JUST_RELEASED);
			case F22:
				func(_f22, PRESSED);
				func(_f22P, JUST_PRESSED);
				func(_f22R, JUST_RELEASED);
			case F23:
				func(_f23, PRESSED);
				func(_f23P, JUST_PRESSED);
				func(_f23R, JUST_RELEASED);
			case F24:
				func(_f24, PRESSED);
				func(_f24P, JUST_PRESSED);
				func(_f24R, JUST_RELEASED);
			case F25:
				func(_f25, PRESSED);
				func(_f25P, JUST_PRESSED);
				func(_f25R, JUST_RELEASED);				
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, copyKeys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, copyKeys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, copyKeys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, copyKeys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if(key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [X, BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				//inline bindKeys(Control.RESET, []);
			case Duo(true): // nothing
			case Duo(false): // nothing
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);		
				//bindKeys(Control.RESET, [R]);
			case Duo(true): // nothing
			case Duo(false): // nothing
			case None: // nothing
			case Custom: // nothing
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}