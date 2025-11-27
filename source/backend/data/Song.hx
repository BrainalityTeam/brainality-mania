package backend.data;

import backend.data.Section;
import objects.play.Note;

import haxe.Json;

typedef SongData =
{
    var title:String;
    var bpm:Int;
    var sections:Array<SectionData>;
    @:optional var mania:Int;
} 

class Song
{
    public var data:SongData;

    public static function parseSong(p:String, fileName:String):SongData
    {
        try {
            return Paths.getJsonData(Paths.getChart(p, fileName));
        } catch (e:Dynamic)
        {
            trace('Error loading JSON Data!');
            return {
                title: 'ERROR!!',
                bpm: 150, 
                sections: [
                    {notes: []}
                ]
            }
        }
    }
}