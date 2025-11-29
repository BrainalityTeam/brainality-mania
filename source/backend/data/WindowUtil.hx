package backend.data;
// PLACEHOLDER LOCATION
import openfl.Lib;

class WindowUtil
{
// it sets the window title
// ok? ok!
    public static function setWindowTitle(title:String):Void
    {
        #if windows
        Lib.application.window.title = title;
        #elseif linux
        Lib.current.stage.window.title = title;
        #elseif mac
        Lib.current.stage.window.title = title;
        #else
        // fallback (HTML5 etc.)
        Lib.application.window.title = title;
        #end
    }
}
