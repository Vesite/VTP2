/// @desc Draw the Yellow highlight

// Default Highlight

// How much i increase the width and height for this
var _inc = 14
var _w = width + _inc
var _h = height + _inc

// Draw highlight
if current_subimage == 1 {
	draw_sprite_stretched(s_9slice_highlight_1, 0, x - _w/2, y - _h/2, _w, _h)
} else if current_subimage == 2 {
	draw_sprite_stretched(s_9slice_highlight_1, 1, x - _w/2, y - _h/2, _w, _h)	
}
