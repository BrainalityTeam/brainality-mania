package backend.script;

import hscript.*;
import openfl.utils.Assets;

class HScript
{
    var parser = new Parser();
    var interp = new Interp();

    public function new(path:String):Dynamic
    {
        try {
            var code = Assets.getText(path);
            var program = parser.parseString(code);
            interp.execute(program);
        } catch (e:Dynamic)
        {
            trace('Error exectuting script!');
            return null;
        }
    }
}