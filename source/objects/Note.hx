package objects;
typedef NoteData = 
{
    var strumTime:Float;
    var row:Int;
}

class Note extends FlxSprite
{
    public var row = 0;
    public var downscroll = false;
    public var scrollSpeed = 1;

    override public function new(x:Float, y:Float, ?row:Int = 0, ?scrollSpeed = 1, ?downscroll:Bool = false)
    {
        this.row = row;
        this.downscroll = downscroll;
        this.scrollSpeed = scrollSpeed;
        
        super(x, y);
    }
}