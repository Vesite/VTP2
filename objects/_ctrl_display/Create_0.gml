
// Make the object a Singleton
if (assign_singleton() == false) exit

//Helper Variables
current_browser_width = display_get_width()
current_browser_height = display_get_height()

possible_window_scales_list = ds_list_create()
var _i = 1
while (true) {
	
	ds_list_add(possible_window_scales_list, _i)
	_i += 1
	
	//If "_i" is the max size we stop adding
	if (MY_GAME_HEIGHT*_i >= display_get_height()) {
		break;
	}
	
}

#region Find correct view variables, then set the first surface_size, gui_size and window_size

	//Max "window_scale"
	event_user(1) 
	
	//Update Display
	event_user(0)
	
	//The gui (where things don't move smooth) is "small", only the required pixels
	display_set_gui_size(GUI_WIDTH, GUI_HEIGHT)
	
	if not IN_HTML {
		if not DEV {
			//Start in fullscreen
			window_set_fullscreen(true)
			alarm[2] = 1
			
		}
	}
	
#endregion
