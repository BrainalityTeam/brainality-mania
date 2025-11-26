package;

import flixel.FlxGame;
import openfl.display.Sprite;

#if MODS_ALLOWED
import backend.modding.Mods;
#end

class Main extends Sprite
{
	public function new()
	{
		#if MODS_ALLOWED
		Mods.loadMods();
		#end
		super();
		addChild(new FlxGame(0, 0, PlayState));
	}
}
