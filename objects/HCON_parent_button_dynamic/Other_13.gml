/// @desc Click the button (One time)

current_subimage = 2 // Click
button_content_y_offset = button_d_dist

script_execute(clicked_script, clicked_script_arg_1, clicked_script_arg_2)

// Sound
var _s = choose(so_tap_1, so_tap_2, so_tap_3)
my_play_audio(_s, global.ae_sfx, , false, 1, 0.15, 1)
