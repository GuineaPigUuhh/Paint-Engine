package paintengine.input;

import cpp.Pointer;
import cpp.UInt32;

@:cppFileCode('#include <windows.h>')
class Mouse 
{
    public static function setPos(x:Int, y:Int):Void
    {
        untyped __cpp__('SetCursorPos(x,y);',x,y);
    }

    public static function getPos():Array<Int>
    {
        untyped __cpp__('
                        POINT pos;
                        if (GetCursorPos(&pos)) 
                        {
                            Array<int> formated = Array_obj<int>::__new(2, 0);
                            formated->__unsafe_set(0, pos.x);
                            formated->__unsafe_set(1, pos.y);
                            return formated;
                        }
                        return Array_obj<int>::__new(2, 0);');
        return [];
    }
}