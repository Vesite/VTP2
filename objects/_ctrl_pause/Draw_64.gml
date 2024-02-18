
if global.paused = true {
	
	if (_ctrl_transition.transition_mode == TRANSITION_MODE.OFF) {
		
		
		//draw_set_alpha(PAUSE_ALPHA)
		//draw_set_color(c_black)
		//draw_rectangle(0, 0, GUI_WIDTH, GUI_HEIGHT, false)
	
		//draw_set_alpha(1)
	
		draw_set_color(c_white)
		draw_set_font(FONT_TITLE)
		draw_text_transformed_color(GUI_WIDTH/2 + 1, GUI_HEIGHT*0.23 + 1, text_on_screen, text_scale, text_scale, 0, c_black, c_black, c_black, c_black, 1)
		draw_text_transformed(GUI_WIDTH/2, GUI_HEIGHT*0.23, text_on_screen, text_scale, text_scale, 0)
		draw_set_font(FONT_NORMAL)
	
	}
	
}

