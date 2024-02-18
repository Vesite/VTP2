
if _ctrl_input.mouse_left_hold {
	var _ind = 1	
} else {
	var _ind = 0
}

// Draw cursor
if not P {
	draw_sprite(s_cursor_16x, _ind, MOUSE_GUI_X, MOUSE_GUI_Y)
} else {
	draw_sprite(s_cursor_16x_2, 2 + _ind, MOUSE_GUI_X, MOUSE_GUI_Y)	
}

if SHOW_DEBUG {
	
	draw_text(100, 100, "HTML: " + string(IN_HTML))
	draw_text(100, 150, "WINDOWS: " + string(IN_WINDOWS))
	draw_text(100, 200, "GX.GAMES: " + string(IN_GX_GAMES))
	
}
