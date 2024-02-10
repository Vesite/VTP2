/// @desc Update Display

//Set the size of the window now
window_set_size(MY_GAME_WIDTH*window_scale, MY_GAME_HEIGHT*window_scale)
my_window_center()
	
//Resize the app_surf
surface_resize(application_surface, MY_GAME_WIDTH*window_scale, MY_GAME_HEIGHT*window_scale)
