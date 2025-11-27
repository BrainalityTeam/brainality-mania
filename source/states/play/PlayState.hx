package states.play;
import backend.MusicState;

import flixel.FlxCamera;
import flixel.group.FlxTypedGroup;

import objects.play.*;

import backend.data.Song;

typedef PlayArgs = {
	var name:String;
	@:optional var difficulty:String;
}
class PlayState extends MusicState
{
	var notes:FlxTypedGroup<Note> = new FlxTypedGroup();

	var SONG:SongData = null;

	override public function new(args:PlayArgs)
	{
		if (args.difficulty == null || args.difficulty.toLowerCase() == 'normal')
			SONG = Song.getChart(SONG, SONG);
		else
			SONG = Song.getChart(SONG, '${SONG}-${args.difficulty.toLowerCase()}');
	}

	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
