package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.display.FPS;
#if MODS_ALLOWED
import backend.modding.Mods;
#end

import states.play.PlayState;

class Main extends Sprite
{
	public function new()
	{
		#if MODS_ALLOWED
		Mods.loadMods();
		#end
		super();
		ddChild(new FPS(10, 3, 0xFFFFFF));
	}
}
