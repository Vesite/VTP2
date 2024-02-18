/// @desc Normal Pause

global.paused = true

text_scale = 2
text_on_screen = "Paused"
can_esq_remove_pause = true

// Black BG
var _id = mycon_draw_frame(GUI_WIDTH/2, GUI_HEIGHT/2, s_black, GUI_BACKGROUND_DEPTH, 1, GUI_WIDTH, GUI_HEIGHT, PAUSE_ALPHA, c_white)
ds_list_add(button_list, _id)

// Pause Frame
var _id = mycon_draw_frame(GUI_WIDTH/2, GUI_HEIGHT/2, s_9slice_c_frame_gray, GUI_FRAME_DEPTH, 2, GUI_WIDTH*0.55, GUI_HEIGHT*0.8, 1, c_white)
ds_list_add(button_list, _id)

// Continue
var _x = GUI_WIDTH*0.5
var _y = GUI_HEIGHT*0.4
var _id = mycon_button_dynamic_basic(_x, _y,,
											 ,,"Continue",true,,
											 end_pause,,,,true, s_9slice_c_button_gray, 2)
ds_list_add(button_list, _id)

// Audio toggle test
var _x = GUI_WIDTH*0.5
var _y = GUI_HEIGHT*0.6
var _id = mycon_button_dynamic_basic(_x, _y,,
											 ,,"Enable Audio",true,,
											 toggle_value_from_enum,TOGGLE_ENUM.ENABLE_MASTER_AUDIO,,true,
											 true,s_9slice_c_button_gray, 2)
ds_list_add(button_list, _id)


// Slider Audio Test
var _x = GUI_WIDTH*0.5
var _y = GUI_HEIGHT*0.78
var _id = mycon_button_slider(_x, _y,, GUI_WIDTH*0.18,GUI_HEIGHT*0.11,
									  s_slider,s_slider_handle,8,12,,
									  "Master Volume:", SLIDER_ENUM.VOLUME_MASTER,s_9slice_c_bg_frame_gray,true)
ds_list_add(button_list, _id)

my_play_audio(so_pause_1, global.ae_sfx)
