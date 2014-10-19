//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

package flambe.platform.html;

import flambe.input.MouseCursor;

class HtmlMouse extends BasicMouse
{
    public function new (pointer :BasicPointer, canvas :Dynamic)
    {
        super(pointer);
        _canvas = canvas;
    }

    override public function set_cursor (cursor :MouseCursor) :MouseCursor
    {
        var name;
        switch (cursor) {
            case Default: name = ""; // inherit
            case Button: name = "pointer";
            case Move: name = "move";
            case NotAllowed: name = "move";
            case ResizeN: name = "n-resize";
            case ResizeE: name = "e-resize";
            case ResizeS: name = "s-resize";
            case ResizeW: name = "w-resize";
            case ResizeNE: name = "ne-resize";
            case ResizeNW: name = "nw-resize";
            case ResizeSE: name = "se-resize";
            case ResizeSW: name = "sw-resize";
            case ResizeEW: name = "ew-resize";
            case ResizeNS: name = "ns-resize";
            case ResizeNESW: name = "nesw-resize";
            case ResizeNWSE: name = "nwse-resize";
            case _: name = "none";
        }
        _canvas.style.cursor = name;

        return super.set_cursor(cursor);
    }

    private var _canvas :Dynamic;
}
