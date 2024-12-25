package paintengine;

class PaintGroup extends PaintBasic
{
    public var members:Array<PaintObject>;

    public function new() 
    {
        create();
        super();
    }

    public function add(obj:PaintObject) 
    {
        members.push(obj);
    }

    public override function create() 
    {
        super.create();
        while (active) update();
    }

    public override function update() 
    {
        draw();
        super.update();
    }

    public override function draw() 
    {
        if (!visible)
            return;

        for (i in members) i.draw();
        super.draw();
    }
}