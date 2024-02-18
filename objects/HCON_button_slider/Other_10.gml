 
event_inherited()

var _x_left = x - width/2

#region Draw text / icon box
	
	// Draw a frame for the left box
	//draw_sprite_stretched(s_9slice_c_frame_gray, 1, _x_left + delta, y - left_box_height/2, left_box_width, left_box_height)
	
	// Draw the text
	draw_text_shadow(_x_left + delta + left_box_width/2, y, text, 1, c_white, 1)
	
#endregion



#region Draw the slider
	
	var _slider_x_left = _x_left + delta*2 + left_box_width
	var _slider_y = y
	
	// Slider bg
	draw_sprite_stretched(slider_sprite, 1, _slider_x_left, _slider_y - slider_height/2, slider_width, slider_height)
	// Slider progress bar
	var _value_amount = slider_get_value(slider_enum)
	draw_sprite_stretched(slider_sprite, 2, _slider_x_left, _slider_y - slider_height/2, slider_width*_value_amount, slider_height)
	// Slider Frame
	draw_sprite_stretched(slider_sprite, 0, _slider_x_left, _slider_y - slider_height/2, slider_width, slider_height)

	// Draw the handle
	draw_sprite(slider_handle_sprite, handle_image_index, slider_handle_x, y)

#endregion





