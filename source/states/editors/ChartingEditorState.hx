package states.editors;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.FlxState;
import flixel.util.FlxColor;

class ChartingEditorState extends FlxState
{
	public var GRID_SIZE:Int = 40;
	public var GRID_WIDTH:Int = 8;
	public var GRID_HEIGHT:Int = 16;

	public var gridBG:FlxSprite;
	public var notes:Array<FlxSprite>;

	override public function create():Void
	{
		super.create();

		gridBG = FlxGridOverlay.create(GRID_SIZE, GRID_SIZE, GRID_SIZE * GRID_WIDTH, GRID_SIZE * GRID_HEIGHT);
		add(gridBG);

		FlxG.camera.bgColor = FlxColor.GRAY;

		notes = [];

		var gridBlackLine:FlxSprite = new FlxSprite(gridBG.x + gridBG.width / 2)
			.makeGraphic(2, Std.int(gridBG.height), FlxColor.BLACK);
		add(gridBlackLine);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (FlxG.mouse.justPressed)
		{
			if (FlxG.mouse.x >= gridBG.x && FlxG.mouse.x < gridBG.x + gridBG.width &&
				FlxG.mouse.y >= gridBG.y && FlxG.mouse.y < gridBG.y + gridBG.height)
			{
				var gridX:Int = Math.floor((FlxG.mouse.x - gridBG.x) / GRID_SIZE);
				var gridY:Int = Math.floor((FlxG.mouse.y - gridBG.y) / GRID_SIZE);

				toggleNote(gridX, gridY);
			}
		}
	}

	private function toggleNote(gridX:Int, gridY:Int):Void
	{
		for (note in notes)
		{
			if (note.x == gridBG.x + gridX * GRID_SIZE && note.y == gridBG.y + gridY * GRID_SIZE)
			{
				remove(note);
				notes.remove(note);
				return;
			}
		}

		var newNote:FlxSprite = new FlxSprite(gridBG.x + gridX * GRID_SIZE, gridBG.y + gridY * GRID_SIZE)
			.makeGraphic(GRID_SIZE, GRID_SIZE, FlxColor.RED);
		add(newNote);
		notes.push(newNote);
	}
}
