package states.play;
import backend.MusicState;

import flixel.FlxCamera;
//import flixel.group.FlxTypedGroup;

import objects.play.*;

import backend.data.Song;

typedef PlayArgs = {
	var name:String;
	@:optional var difficulty:String;
}
class PlayState extends MusicState
{
	//var notes:FlxTypedGroup<Note> = new FlxTypedGroup();

	var SONG:SongData = null;

	override public function new(args:PlayArgs)
	{
		if (args.difficulty == null || args.difficulty.toLowerCase() == 'normal')
			SONG = Song.parseSong(args.name, args.name);
		else
			SONG = Song.parseSong(args.name, '${args.name}-${args.difficulty.toLowerCase()}');

		trace('Loaded song: ${SONG.title}');
		super();
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
