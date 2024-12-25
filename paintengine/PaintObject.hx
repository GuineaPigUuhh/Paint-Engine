package paintengine;

class PaintObject extends PaintBasic
{
    public var x:Float = 0;
    public var y:Float = 0;

    public function new(x:Float=0, y:Float=0) 
    {
        this.x = x;
        this.y = y;
        create();
        super();
    }

    public override function create():Void 
    {
        while (active) update();
    }

    public override function draw() 
    {
        if (!visible) return;
        graphic();
        super.draw();
    }
}