package;

import openfl.ui.Keyboard;
#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import flash.system.System;

using StringTools;

class TSSave extends MusicBeatState
{
	var options:Array<String> = ['QWERTY', 'DVORAK', 'AZERTY', 'COLEMAK'];
    private var grpOptions:FlxTypedGroup<Alphabet>;
    private var alpha:FlxTypedGroup<Alphabet>;
	private static var curSelected:Int = 0;
	private var grpInputs:Array<AttachedText> = [];
	public static var menuBG:FlxSprite;

	private static var curAlt:Bool = false;
	
	var nextAccept:Int = 5;

	override function create() {

		super.create();
	}

	override function closeSubState() {
		super.closeSubState();
		ClientPrefs.saveSettings();
	}

	override function update(elapsed:Float) {
    }
    
    public static function bindQwerty():Void
    {
        trace("QWERTY");
        PlayerSettings.player1.controls.bindKeys(Control.F0, [FlxKey.Q]);
        PlayerSettings.player1.controls.bindKeys(Control.F1, [FlxKey.W]);
        PlayerSettings.player1.controls.bindKeys(Control.F2, [FlxKey.E]);
        PlayerSettings.player1.controls.bindKeys(Control.F3, [FlxKey.R]);
        PlayerSettings.player1.controls.bindKeys(Control.F4, [FlxKey.T]);
        PlayerSettings.player1.controls.bindKeys(Control.F5, [FlxKey.Y]);
        PlayerSettings.player1.controls.bindKeys(Control.F6, [FlxKey.U]);
        PlayerSettings.player1.controls.bindKeys(Control.F7, [FlxKey.I]);
        PlayerSettings.player1.controls.bindKeys(Control.F8, [FlxKey.O]);
        PlayerSettings.player1.controls.bindKeys(Control.F9, [FlxKey.P]);
        PlayerSettings.player1.controls.bindKeys(Control.F10, [FlxKey.A]);
        PlayerSettings.player1.controls.bindKeys(Control.F11, [FlxKey.S]);
        PlayerSettings.player1.controls.bindKeys(Control.F12, [FlxKey.D]);
        PlayerSettings.player1.controls.bindKeys(Control.F13, [FlxKey.F]);
        PlayerSettings.player1.controls.bindKeys(Control.F14, [FlxKey.G]);
        PlayerSettings.player1.controls.bindKeys(Control.F15, [FlxKey.H]);
        PlayerSettings.player1.controls.bindKeys(Control.F16, [FlxKey.J]);
        PlayerSettings.player1.controls.bindKeys(Control.F17, [FlxKey.K]);
        PlayerSettings.player1.controls.bindKeys(Control.F18, [FlxKey.L]);
        PlayerSettings.player1.controls.bindKeys(Control.F19, [FlxKey.Z]);
        PlayerSettings.player1.controls.bindKeys(Control.F20, [FlxKey.X]);
        PlayerSettings.player1.controls.bindKeys(Control.F21, [FlxKey.C]);
        PlayerSettings.player1.controls.bindKeys(Control.F22, [FlxKey.V]);
        PlayerSettings.player1.controls.bindKeys(Control.F23, [FlxKey.B]);
        PlayerSettings.player1.controls.bindKeys(Control.F24, [FlxKey.N]);
        PlayerSettings.player1.controls.bindKeys(Control.F25, [FlxKey.M]);
    }

    public static function bindDvorak()
    {
        trace("DVORAK");
        PlayerSettings.player1.controls.bindKeys(Control.F0, [FlxKey.P]);
        PlayerSettings.player1.controls.bindKeys(Control.F1, [FlxKey.Y]);
        PlayerSettings.player1.controls.bindKeys(Control.F2, [FlxKey.F]);
        PlayerSettings.player1.controls.bindKeys(Control.F3, [FlxKey.G]);
        PlayerSettings.player1.controls.bindKeys(Control.F4, [FlxKey.C]);
        PlayerSettings.player1.controls.bindKeys(Control.F5, [FlxKey.R]);
        PlayerSettings.player1.controls.bindKeys(Control.F6, [FlxKey.L]);
        PlayerSettings.player1.controls.bindKeys(Control.F7, [FlxKey.A]);
        PlayerSettings.player1.controls.bindKeys(Control.F8, [FlxKey.O]);
        PlayerSettings.player1.controls.bindKeys(Control.F9, [FlxKey.E]);
        PlayerSettings.player1.controls.bindKeys(Control.F10, [FlxKey.U]);
        PlayerSettings.player1.controls.bindKeys(Control.F11, [FlxKey.I]);
        PlayerSettings.player1.controls.bindKeys(Control.F12, [FlxKey.D]);
        PlayerSettings.player1.controls.bindKeys(Control.F13, [FlxKey.H]);
        PlayerSettings.player1.controls.bindKeys(Control.F14, [FlxKey.T]);
        PlayerSettings.player1.controls.bindKeys(Control.F15, [FlxKey.N]);
        PlayerSettings.player1.controls.bindKeys(Control.F16, [FlxKey.S]);
        PlayerSettings.player1.controls.bindKeys(Control.F17, [FlxKey.Q]);
        PlayerSettings.player1.controls.bindKeys(Control.F18, [FlxKey.J]);
        PlayerSettings.player1.controls.bindKeys(Control.F19, [FlxKey.K]);
        PlayerSettings.player1.controls.bindKeys(Control.F20, [FlxKey.X]);
        PlayerSettings.player1.controls.bindKeys(Control.F21, [FlxKey.B]);
        PlayerSettings.player1.controls.bindKeys(Control.F22, [FlxKey.M]);
        PlayerSettings.player1.controls.bindKeys(Control.F23, [FlxKey.W]);
        PlayerSettings.player1.controls.bindKeys(Control.F24, [FlxKey.V]);
        PlayerSettings.player1.controls.bindKeys(Control.F25, [FlxKey.Z]);
    }

    public static function bindAzerty()
    {
        trace("AZERTY");
        PlayerSettings.player1.controls.bindKeys(Control.F0, [FlxKey.A]);
        PlayerSettings.player1.controls.bindKeys(Control.F1, [FlxKey.Z]);
        PlayerSettings.player1.controls.bindKeys(Control.F2, [FlxKey.E]);
        PlayerSettings.player1.controls.bindKeys(Control.F3, [FlxKey.R]);
        PlayerSettings.player1.controls.bindKeys(Control.F4, [FlxKey.T]);
        PlayerSettings.player1.controls.bindKeys(Control.F5, [FlxKey.Y]);
        PlayerSettings.player1.controls.bindKeys(Control.F6, [FlxKey.U]);
        PlayerSettings.player1.controls.bindKeys(Control.F7, [FlxKey.I]);
        PlayerSettings.player1.controls.bindKeys(Control.F8, [FlxKey.O]);
        PlayerSettings.player1.controls.bindKeys(Control.F9, [FlxKey.P]);
        PlayerSettings.player1.controls.bindKeys(Control.F10, [FlxKey.Q]);
        PlayerSettings.player1.controls.bindKeys(Control.F11, [FlxKey.S]);
        PlayerSettings.player1.controls.bindKeys(Control.F12, [FlxKey.D]);
        PlayerSettings.player1.controls.bindKeys(Control.F13, [FlxKey.F]);
        PlayerSettings.player1.controls.bindKeys(Control.F14, [FlxKey.G]);
        PlayerSettings.player1.controls.bindKeys(Control.F15, [FlxKey.H]);
        PlayerSettings.player1.controls.bindKeys(Control.F16, [FlxKey.J]);
        PlayerSettings.player1.controls.bindKeys(Control.F17, [FlxKey.K]);
        PlayerSettings.player1.controls.bindKeys(Control.F18, [FlxKey.L]);
        PlayerSettings.player1.controls.bindKeys(Control.F19, [FlxKey.M]);
        PlayerSettings.player1.controls.bindKeys(Control.F20, [FlxKey.W]);
        PlayerSettings.player1.controls.bindKeys(Control.F21, [FlxKey.X]);
        PlayerSettings.player1.controls.bindKeys(Control.F22, [FlxKey.C]);
        PlayerSettings.player1.controls.bindKeys(Control.F23, [FlxKey.V]);
        PlayerSettings.player1.controls.bindKeys(Control.F24, [FlxKey.B]);
        PlayerSettings.player1.controls.bindKeys(Control.F25, [FlxKey.N]);
    }

    public static function bindColemak()
    {
        trace("COLEMAK");
        PlayerSettings.player1.controls.bindKeys(Control.F0, [FlxKey.Q]);
        PlayerSettings.player1.controls.bindKeys(Control.F1, [FlxKey.W]);
        PlayerSettings.player1.controls.bindKeys(Control.F2, [FlxKey.F]);
        PlayerSettings.player1.controls.bindKeys(Control.F3, [FlxKey.P]);
        PlayerSettings.player1.controls.bindKeys(Control.F4, [FlxKey.G]);
        PlayerSettings.player1.controls.bindKeys(Control.F5, [FlxKey.J]);
        PlayerSettings.player1.controls.bindKeys(Control.F6, [FlxKey.L]);
        PlayerSettings.player1.controls.bindKeys(Control.F7, [FlxKey.U]);
        PlayerSettings.player1.controls.bindKeys(Control.F8, [FlxKey.Y]);
        PlayerSettings.player1.controls.bindKeys(Control.F9, [FlxKey.A]);
        PlayerSettings.player1.controls.bindKeys(Control.F10, [FlxKey.R]);
        PlayerSettings.player1.controls.bindKeys(Control.F11, [FlxKey.S]);
        PlayerSettings.player1.controls.bindKeys(Control.F12, [FlxKey.T]);
        PlayerSettings.player1.controls.bindKeys(Control.F13, [FlxKey.D]);
        PlayerSettings.player1.controls.bindKeys(Control.F14, [FlxKey.H]);
        PlayerSettings.player1.controls.bindKeys(Control.F15, [FlxKey.N]);
        PlayerSettings.player1.controls.bindKeys(Control.F16, [FlxKey.E]);
        PlayerSettings.player1.controls.bindKeys(Control.F17, [FlxKey.I]);
        PlayerSettings.player1.controls.bindKeys(Control.F18, [FlxKey.O]);
        PlayerSettings.player1.controls.bindKeys(Control.F19, [FlxKey.Z]);
        PlayerSettings.player1.controls.bindKeys(Control.F20, [FlxKey.X]);
        PlayerSettings.player1.controls.bindKeys(Control.F21, [FlxKey.C]);
        PlayerSettings.player1.controls.bindKeys(Control.F22, [FlxKey.V]);
        PlayerSettings.player1.controls.bindKeys(Control.F23, [FlxKey.B]);
        PlayerSettings.player1.controls.bindKeys(Control.F24, [FlxKey.K]);
        PlayerSettings.player1.controls.bindKeys(Control.F25, [FlxKey.M]);
    }

    public static function unbindQwerty()
        {
            PlayerSettings.player1.controls.unbindKeys(Control.F0, [FlxKey.Q]);
            PlayerSettings.player1.controls.unbindKeys(Control.F1, [FlxKey.W]);
            PlayerSettings.player1.controls.unbindKeys(Control.F2, [FlxKey.E]);
            PlayerSettings.player1.controls.unbindKeys(Control.F3, [FlxKey.R]);
            PlayerSettings.player1.controls.unbindKeys(Control.F4, [FlxKey.T]);
            PlayerSettings.player1.controls.unbindKeys(Control.F5, [FlxKey.Y]);
            PlayerSettings.player1.controls.unbindKeys(Control.F6, [FlxKey.U]);
            PlayerSettings.player1.controls.unbindKeys(Control.F7, [FlxKey.I]);
            PlayerSettings.player1.controls.unbindKeys(Control.F8, [FlxKey.O]);
            PlayerSettings.player1.controls.unbindKeys(Control.F9, [FlxKey.P]);
            PlayerSettings.player1.controls.unbindKeys(Control.F10, [FlxKey.A]);
            PlayerSettings.player1.controls.unbindKeys(Control.F11, [FlxKey.S]);
            PlayerSettings.player1.controls.unbindKeys(Control.F12, [FlxKey.D]);
            PlayerSettings.player1.controls.unbindKeys(Control.F13, [FlxKey.F]);
            PlayerSettings.player1.controls.unbindKeys(Control.F14, [FlxKey.G]);
            PlayerSettings.player1.controls.unbindKeys(Control.F15, [FlxKey.H]);
            PlayerSettings.player1.controls.unbindKeys(Control.F16, [FlxKey.J]);
            PlayerSettings.player1.controls.unbindKeys(Control.F17, [FlxKey.K]);
            PlayerSettings.player1.controls.unbindKeys(Control.F18, [FlxKey.L]);
            PlayerSettings.player1.controls.unbindKeys(Control.F19, [FlxKey.Z]);
            PlayerSettings.player1.controls.unbindKeys(Control.F20, [FlxKey.X]);
            PlayerSettings.player1.controls.unbindKeys(Control.F21, [FlxKey.C]);
            PlayerSettings.player1.controls.unbindKeys(Control.F22, [FlxKey.V]);
            PlayerSettings.player1.controls.unbindKeys(Control.F23, [FlxKey.B]);
            PlayerSettings.player1.controls.unbindKeys(Control.F24, [FlxKey.N]);
            PlayerSettings.player1.controls.unbindKeys(Control.F25, [FlxKey.M]);
        }

    public static function unbindDvorak()
        {
            PlayerSettings.player1.controls.unbindKeys(Control.F0, [FlxKey.P]);
            PlayerSettings.player1.controls.unbindKeys(Control.F1, [FlxKey.Y]);
            PlayerSettings.player1.controls.unbindKeys(Control.F2, [FlxKey.F]);
            PlayerSettings.player1.controls.unbindKeys(Control.F3, [FlxKey.G]);
            PlayerSettings.player1.controls.unbindKeys(Control.F4, [FlxKey.C]);
            PlayerSettings.player1.controls.unbindKeys(Control.F5, [FlxKey.R]);
            PlayerSettings.player1.controls.unbindKeys(Control.F6, [FlxKey.L]);
            PlayerSettings.player1.controls.unbindKeys(Control.F7, [FlxKey.A]);
            PlayerSettings.player1.controls.unbindKeys(Control.F8, [FlxKey.O]);
            PlayerSettings.player1.controls.unbindKeys(Control.F9, [FlxKey.E]);
            PlayerSettings.player1.controls.unbindKeys(Control.F10, [FlxKey.U]);
            PlayerSettings.player1.controls.unbindKeys(Control.F11, [FlxKey.I]);
            PlayerSettings.player1.controls.unbindKeys(Control.F12, [FlxKey.D]);
            PlayerSettings.player1.controls.unbindKeys(Control.F13, [FlxKey.H]);
            PlayerSettings.player1.controls.unbindKeys(Control.F14, [FlxKey.T]);
            PlayerSettings.player1.controls.unbindKeys(Control.F15, [FlxKey.N]);
            PlayerSettings.player1.controls.unbindKeys(Control.F16, [FlxKey.S]);
            PlayerSettings.player1.controls.unbindKeys(Control.F17, [FlxKey.Q]);
            PlayerSettings.player1.controls.unbindKeys(Control.F18, [FlxKey.J]);
            PlayerSettings.player1.controls.unbindKeys(Control.F19, [FlxKey.K]);
            PlayerSettings.player1.controls.unbindKeys(Control.F20, [FlxKey.X]);
            PlayerSettings.player1.controls.unbindKeys(Control.F21, [FlxKey.B]);
            PlayerSettings.player1.controls.unbindKeys(Control.F22, [FlxKey.M]);
            PlayerSettings.player1.controls.unbindKeys(Control.F23, [FlxKey.W]);
            PlayerSettings.player1.controls.unbindKeys(Control.F24, [FlxKey.V]);
            PlayerSettings.player1.controls.unbindKeys(Control.F25, [FlxKey.Z]);
        }

    public static function unbindAzerty()
        {
            PlayerSettings.player1.controls.unbindKeys(Control.F0, [FlxKey.A]);
            PlayerSettings.player1.controls.unbindKeys(Control.F1, [FlxKey.Z]);
            PlayerSettings.player1.controls.unbindKeys(Control.F2, [FlxKey.E]);
            PlayerSettings.player1.controls.unbindKeys(Control.F3, [FlxKey.R]);
            PlayerSettings.player1.controls.unbindKeys(Control.F4, [FlxKey.T]);
            PlayerSettings.player1.controls.unbindKeys(Control.F5, [FlxKey.Y]);
            PlayerSettings.player1.controls.unbindKeys(Control.F6, [FlxKey.U]);
            PlayerSettings.player1.controls.unbindKeys(Control.F7, [FlxKey.I]);
            PlayerSettings.player1.controls.unbindKeys(Control.F8, [FlxKey.O]);
            PlayerSettings.player1.controls.unbindKeys(Control.F9, [FlxKey.P]);
            PlayerSettings.player1.controls.unbindKeys(Control.F10, [FlxKey.Q]);
            PlayerSettings.player1.controls.unbindKeys(Control.F11, [FlxKey.S]);
            PlayerSettings.player1.controls.unbindKeys(Control.F12, [FlxKey.D]);
            PlayerSettings.player1.controls.unbindKeys(Control.F13, [FlxKey.F]);
            PlayerSettings.player1.controls.unbindKeys(Control.F14, [FlxKey.G]);
            PlayerSettings.player1.controls.unbindKeys(Control.F15, [FlxKey.H]);
            PlayerSettings.player1.controls.unbindKeys(Control.F16, [FlxKey.J]);
            PlayerSettings.player1.controls.unbindKeys(Control.F17, [FlxKey.K]);
            PlayerSettings.player1.controls.unbindKeys(Control.F18, [FlxKey.L]);
            PlayerSettings.player1.controls.unbindKeys(Control.F19, [FlxKey.M]);
            PlayerSettings.player1.controls.unbindKeys(Control.F20, [FlxKey.W]);
            PlayerSettings.player1.controls.unbindKeys(Control.F21, [FlxKey.X]);
            PlayerSettings.player1.controls.unbindKeys(Control.F22, [FlxKey.C]);
            PlayerSettings.player1.controls.unbindKeys(Control.F23, [FlxKey.V]);
            PlayerSettings.player1.controls.unbindKeys(Control.F24, [FlxKey.B]);
            PlayerSettings.player1.controls.unbindKeys(Control.F25, [FlxKey.N]);
        }

    public static function unbindColemak():Void
        {
            PlayerSettings.player1.controls.unbindKeys(Control.F0, [FlxKey.Q]);
            PlayerSettings.player1.controls.unbindKeys(Control.F1, [FlxKey.W]);
            PlayerSettings.player1.controls.unbindKeys(Control.F2, [FlxKey.F]);
            PlayerSettings.player1.controls.unbindKeys(Control.F3, [FlxKey.P]);
            PlayerSettings.player1.controls.unbindKeys(Control.F4, [FlxKey.G]);
            PlayerSettings.player1.controls.unbindKeys(Control.F5, [FlxKey.J]);
            PlayerSettings.player1.controls.unbindKeys(Control.F6, [FlxKey.L]);
            PlayerSettings.player1.controls.unbindKeys(Control.F7, [FlxKey.U]);
            PlayerSettings.player1.controls.unbindKeys(Control.F8, [FlxKey.Y]);
            PlayerSettings.player1.controls.unbindKeys(Control.F9, [FlxKey.A]);
            PlayerSettings.player1.controls.unbindKeys(Control.F10, [FlxKey.R]);
            PlayerSettings.player1.controls.unbindKeys(Control.F11, [FlxKey.S]);
            PlayerSettings.player1.controls.unbindKeys(Control.F12, [FlxKey.T]);
            PlayerSettings.player1.controls.unbindKeys(Control.F13, [FlxKey.D]);
            PlayerSettings.player1.controls.unbindKeys(Control.F14, [FlxKey.H]);
            PlayerSettings.player1.controls.unbindKeys(Control.F15, [FlxKey.N]);
            PlayerSettings.player1.controls.unbindKeys(Control.F16, [FlxKey.E]);
            PlayerSettings.player1.controls.unbindKeys(Control.F17, [FlxKey.I]);
            PlayerSettings.player1.controls.unbindKeys(Control.F18, [FlxKey.O]);
            PlayerSettings.player1.controls.unbindKeys(Control.F19, [FlxKey.Z]);
            PlayerSettings.player1.controls.unbindKeys(Control.F20, [FlxKey.X]);
            PlayerSettings.player1.controls.unbindKeys(Control.F21, [FlxKey.C]);
            PlayerSettings.player1.controls.unbindKeys(Control.F22, [FlxKey.V]);
            PlayerSettings.player1.controls.unbindKeys(Control.F23, [FlxKey.B]);
            PlayerSettings.player1.controls.unbindKeys(Control.F24, [FlxKey.K]);
        }

	function reloadKeys() {
		while(grpInputs.length > 0) {
			var item:AttachedText = grpInputs[0];
			grpInputs.remove(item);
			remove(item);
		}

		var bullShit:Int = 0;
		for (i in 0...grpInputs.length) {
			grpInputs[i].alpha = 0.6;
		}
	}

}