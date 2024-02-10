/// @desc max "window_scale"

max_window_scale = floor(display_get_height()/MY_GAME_HEIGHT)
max_window_scale = max(max_window_scale, 1)

if not IN_HTML and (window_get_fullscreen() == false) {
	
	//Keep "max_window_scale" smaller than fullscreen (but as big as possible to start)
	if (MY_GAME_HEIGHT*max_window_scale == display_get_height())
		max_window_scale--
	
}
window_scale = max_window_scale
