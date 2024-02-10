
#region Initalize Game

	global.paused = true
	draw_set_font(f_12x_equipment)
	my_set_text_align(fa_center, fa_middle)
	
	#macro FONT_NORMAL f_12x_equipment
	#macro FONT_TITLE f_12x_compass
	#macro FONT_NUMBERS f_12x_matchup

#endregion

// General Options
#macro SHOW_DEBUG false
#macro ENABLE_SCREENSHAKE true

// For button dynamic
enum TOGGLE_ENUM {
	ENABLE_MASTER_AUDIO,
	ENABLE_SFX,
	ENABLE_MUSIC,
	ENABLE_AMBIENCE,
}

/*
Use this an a input to a function, that function will also get the sliders value (from 0 to 1) and set a corresponding global variable to a updated value.
*/
enum SLIDER_ENUM {
	VOLUME_MASTER,
	VOLUME_SFX,
	VOLUME_MUSIC,
	VOLUME_AMBIENCE,
}

// Depth
#macro GUI_BACKGROUND_DEPTH -1000
#macro GUI_FRAME_DEPTH -2000
#macro GUI_BUTTON_DEPTH -3000
#macro SINGLETON_OBJ_DEPTH -4000

// Visual
#macro PAUSE_ALPHA 0.75

// Display Size
#macro MY_GAME_WIDTH (1080/2)
#macro MY_GAME_HEIGHT (1080/2)
#macro GUI_WIDTH 1080/2
#macro GUI_HEIGHT 1080/2

// Shorthands
#macro DEV false
#macro dev:DEV true
#macro IN_WINDOWS (os_type == os_windows) and (os_browser == browser_not_a_browser)
#macro IN_HTML (not (os_browser == browser_not_a_browser))
#macro IN_GX_GAMES (os_type == os_gxgames)
#macro P (global.paused == true)
#macro MOUSE_GUI_X device_mouse_x_to_gui(0)
#macro MOUSE_GUI_Y device_mouse_y_to_gui(0)

// In-Game
#macro GRAVITY 0.235

