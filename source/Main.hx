package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.display.FPS;

import states.play.PlayState;

import debug.FPSCounter;

class Main extends Sprite
{
	public function new()
	{
		super();

		addChild(new FlxGame(0, 0, PlayState, 60, 60, true));
		addChild(new FPSCounter(10, 3, 0xFFFFFF));
	}
}
