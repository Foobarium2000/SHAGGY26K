package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxState;
import openfl.Assets;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;
import openfl.events.Event;

class Main extends Sprite
{
	var gameWidth:Int = 1280; // Width of the game in pixels (might be less / more in actual pixels depending on your zoom).
	var gameHeight:Int = 720; // Height of the game in pixels (might be less / more in actual pixels depending on your zoom).
	var initialState:Class<FlxState> = TitleState; // The FlxState the game starts with.
	var zoom:Float = -1; // If -1, zoom is automatically calculated to fit the window dimensions.
	var framerate:Int = 60; // How many frames per second the game should run at.
	var skipSplash:Bool = true; // Whether to skip the flixel splash screen that appears in release mode.
	var startFullscreen:Bool = false; // Whether to start the game in fullscreen on desktop targets
	public static var fpsVar:FPS;
	public static var drums:Bool = false;
	public static var menuBad:Bool = false;
	public static var menuMusPlay:Bool = false;
	public static var skipDes:Bool = false;
	public static var ammo:Array<Int> = [4, 6, 7, 9, 13, 26];
	public static var gfxIndex:Array<Dynamic> = [
		[3, 4, 5, 6],
		[3, 5, 6, 19, 20, 22],
		[3, 5, 6, 7, 19, 20, 22],
		[3, 4, 5, 6, 7, 19, 20, 21, 22],
		[0, 3, 4, 5, 6, 7, 17, 18, 19, 20, 21, 22, 23],
		[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
	];
	public static var gfxHud:Array<Dynamic> = [
		[1, 2, 3, 4],
		[1, 3, 4, 1, 2, 4],
		[1, 3, 4, 5, 1, 2, 4],
		[1, 2, 3, 4, 5, 1, 2, 3, 4],
		[0, 1, 2, 3, 4, 5, 6, 5, 1, 2, 3, 4, 7],
		[0, 0, 0, 1, 2, 3, 4, 5, 6, 5, 9, 12, 8, 10, 11, 6, 5, 6, 5, 1, 2, 3, 4, 7, 7, 7]
	];
	public static var gfxAlterInd:Array<Dynamic> = [
		[2, 3, 3, 2],
		[0, 1, 2, 2, 1, 0],
		[0, 1, 2, 3, 2, 1, 0],
		[0, 1, 2, 1, 3, 1, 2, 1, 0]
	];
	public static var letterMax:Array<Int> = [26, 13, 9, 4];
	public static var skinName:Array<String> = ['assets', 'alter'];
	public static var gfxDir:Array<String> = ['FOLDLEFT', 'LEFT', 'DOWN', 'UP', 'RIGHT', 'SPACE', 'STAR', 'FOLDRIGHT', 'PLAY', 'SQUARE', 'TRIANGLE', 'CROSS', 'CIRCLE'];
	public static var charDir:Array<String> = ['LEFT', 'LEFT', 'DOWN', 'UP', 'DOWN', 'RIGHT', 'UP', 'RIGHT', 'UP', 'LEFT', 'UP', 'RIGHT', 'DOWN'];
	public static var gfxLetter:Array<String> = ['magenta', 'chocolate', 'amber', 'purple', 'blue', 'green', 'red', 'white', 'celeste', 'mint', 'tuscan', 'pacificblue', 'seagreen', 'shadow', 'periwinkle', 'cadmiumgreen', 'marigold', 'coral', 'queenblue', 'yellow', 'violet', 'black', 'dark', 'carmine', 'sky', 'darkpink'];
	public static var gfxLetterAlt:Array<String> = ['magenta', 'chocolate', 'amber', 'left', 'down', 'up', 'right', 'white', 'celeste', 'mint', 'tuscan', 'pacificblue', 'seagreen', 'shadow', 'periwinkle', 'cadmiumgreen', 'marigold', 'coral', 'queenblue', 'yel', 'violet', 'black', 'dark', 'carmine', 'sky', 'darkpink'];

	// You can pretty much ignore everything from here on - your code should go in your states.

	public static function main():Void
	{
		Lib.current.addChild(new Main());
	}

	public function new()
	{
		super();

		if (stage != null)
		{
			init();
		}
		else
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}

	private function init(?E:Event):Void
	{
		if (hasEventListener(Event.ADDED_TO_STAGE))
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}

		setupGame();
	}

	private function setupGame():Void
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		if (zoom == -1)
		{
			var ratioX:Float = stageWidth / gameWidth;
			var ratioY:Float = stageHeight / gameHeight;
			zoom = Math.min(ratioX, ratioY);
			gameWidth = Math.ceil(stageWidth / zoom);
			gameHeight = Math.ceil(stageHeight / zoom);
		}

		#if !debug
		initialState = TitleState;
		#end

		addChild(new FlxGame(gameWidth, gameHeight, initialState, zoom, framerate, framerate, skipSplash, startFullscreen));

		#if !mobile
		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		if(fpsVar != null) {
			fpsVar.visible = ClientPrefs.showFPS;
		}
		#end

		#if html5
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;
		#end
	}
}