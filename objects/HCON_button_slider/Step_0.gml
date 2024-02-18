
event_inherited()

var _input = _ctrl_input

// Check for collision with the slider handle. get "is_inside_handle"
var _w = slider_handle_width
var _h = slider_handle_height

if draw_in_gui {
	var _check = point_in_rectangle(MOUSE_GUI_X, MOUSE_GUI_Y, slider_handle_x - _w, y - _h, slider_handle_x + _w, y + _h)
} else {
	var _check = point_in_rectangle(mouse_x, mouse_y, slider_handle_x - _w, y - _h, slider_handle_x + _w, y + _h)
}

#region Logic for "is_holding_handle" and "handle_image_index"

	if mouse_check_button_released(mb_left) {
		is_holding_handle = false
		handle_image_index = 0
	}

	if is_inside_handle == false {
		if  _check {
		
			is_inside_handle = true
			handle_image_index = 1
		
		}
	}
	else {
		if not _check {
		
			// Do nothing when we leave the button?
			is_inside_handle = false
			handle_image_index = 0
		}
	}


	if is_inside_handle {
		
		if _input.mouse_left_clicked {
		
			// Here we have clicked the button
			is_holding_handle = true
		
		}
		
	}

	if is_holding_handle {
		handle_image_index = 2
	}

#endregion


// Change the position of "handle_
if is_holding_handle {
	
	if draw_in_gui {
		slider_handle_x = MOUSE_GUI_X
	} else {
		slider_handle_x = mouse_x
	}
	
	var _slider_x_left = x - width/2 + delta + left_box_width + delta
	slider_handle_x = clamp(slider_handle_x, _slider_x_left, _slider_x_left + slider_width)
	
	// Set the current value based on the position of the handle
	var _dist_from_slider_left = slider_handle_x - _slider_x_left
	var _current_slider_val = _dist_from_slider_left/(slider_width)
	slider_set_value(slider_enum, _current_slider_val)
	
}




