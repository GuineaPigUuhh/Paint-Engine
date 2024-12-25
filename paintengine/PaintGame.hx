package paintengine;

import sys.io.Process;

class PaintGame 
{
    public var state:PaintState = null;

    public function new(state:PaintState) 
    {
        this.state = state;
        Sys.command('start mspaint');
    }
}