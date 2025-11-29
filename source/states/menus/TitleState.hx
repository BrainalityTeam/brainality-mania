package states.menus;

import states.play.PlayState.PlayArgs;
class TitleState extends MusicState
{
    override public function create()
    {
        var placeholderTitle = new FlxText(0, 40, 0, "Brainality Mania", 32);
        placeholderTitle.screenCenter(X);
        add(placeholderTitle);

        var enter = new FlxText(0, 720-40, 0, "Press Enter to Start", 18);
        enter.screenCenter(X);
        add(enter);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ENTER)
        {
            var song:PlayArgs = {
                name: 'Test'
            }
            FlxG.switchState(new PlayState(song));
        }

        if (FlxG.keys.justPressed.SEVEN)
            FlxG.switchState(new states.editors.ChartingEditorState());
    }
}