package backend;

import flixel.FlxG;

class CoolUtil {
    public static function playSound(soundPath:String, volume:Float = 1.0, loop:Bool = false, autoDestroy:Bool = true) {
        return FlxG.sound.play(soundPath, volume, loop, autoDestroy);
    }
}
