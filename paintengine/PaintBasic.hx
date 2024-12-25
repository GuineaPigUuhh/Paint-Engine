package paintengine;

class PaintBasic 
{
    public var visible(default,set):Bool = true;
    public var active(default,set):Bool = true;

    public function set_visible(v:Bool) return visible = v;
    public function set_active(v:Bool) return active = v;

    public function new():Void {}
    public function create():Void {}
    public function update():Void {}
    public dynamic function graphic():Void {}
    public function draw():Void {}
}