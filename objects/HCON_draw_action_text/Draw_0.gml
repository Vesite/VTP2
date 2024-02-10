/// @desc

var _a = duration/duration_max

if shadow {
	draw_text_shadow(x, y, text, 1, col, _a)	
} else {
	draw_text_color(x, y, text, col, col, col, col, _a)	
}
