package backend;

import haxe.Json;
import sys.io.File;
import sys.FileSystem;

class Paths
{
    public static function getImage(path:String, parentFolder = 'shared')
        return 'assets/${parentFolder}/${path}';

    public static function getSong(path:String):String
        return 'assets/songs/${path}';

    public static function getChart(songName:String, ?fileName:String = 'chart'):String
        return 'assets/data/${songName}/${fileName}.json';

    public static function getJsonData(path:String):Dynamic
    {
        return Json.parse(File.getContent(path));
    }

    
    public static function getVideo(path:String, parentFolder:String = 'videos'):String
    {
        
        return 'assets/${parentFolder}/${path}.mp4';
    }
}
