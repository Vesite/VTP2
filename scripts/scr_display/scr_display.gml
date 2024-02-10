
function my_toggle_fullscreen() {
	
	if not IN_HTML {
		window_set_fullscreen(not window_get_fullscreen())
		with (_ctrl_display) {
			alarm[2] = 1
		}
	}

}

function my_toggle_screen_size() {
	
	if not IN_HTML {
		with (_ctrl_display) {
		
			window_scale += 1
		
			//Loop around if we are our of bounds
			if (ds_list_find_index(possible_window_scales_list, window_scale) == -1) {
				window_scale = 1	
			}
			event_user(0)
		
		}
	}

}

function my_window_center() {
	
	with (_ctrl_display) {
	
		var _w = MY_GAME_WIDTH*window_scale
		var _h = MY_GAME_HEIGHT*window_scale
		var _x = display_get_width()/2 - _w/2
		var _y = display_get_height()/2 - _h/2
		window_set_position(_x, _y)
	
	}
	
}

/*
Adds screen shake for "_duration", will get less as timer goes down
*/
function add_screen_shake(_duration) {
	
	if not ENABLE_SCREENSHAKE { exit }
	
	with (_ctrl_camera) {
		screen_shake_timer = _duration
	}
	
}

function draw_text_shadow(_x, _y, _txt, _shadow_dist, _col, _alpha=1) {
	
	draw_text_color(_x + _shadow_dist, _y + _shadow_dist, _txt, c_black, c_black, c_black, c_black, _alpha)
	draw_text_color(_x, _y, _txt, _col, _col, _col, _col, _alpha)
	
}
