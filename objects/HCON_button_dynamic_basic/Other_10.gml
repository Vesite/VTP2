/// @desc Draw everything

event_inherited()

var _x = x
var _y = y + button_content_y_offset

//Text
draw_text_shadow(_x, _y, text, 1, c_white)

//Icon-Sprite
if icon_sprite != noone {
	
	//Draw the sprite "selected"
	if icon_sprite_highlight {
		
		//Draw yellow thing
		if is_inside {
			shader_set(sh_outline_yellow)
			shader_set_uniform_f(upixel_w, texel_w)
			shader_set_uniform_f(upixel_h, texel_h)
			draw_sprite_ext(icon_sprite, sprite_image_index, _x, _y, 1, 1, 0, c_white, 1)
			shader_reset()
		}
		
	}
	
	draw_sprite_ext(icon_sprite, sprite_image_index, _x, _y, 1, 1, 0, c_white, 1)
}

//Draw toggle sprite
//Make it bright if toggle setting is on
if is_toggle {
	
	var _toggle_on = true
	var _toggle_enum = clicked_script_arg_1
	
	switch (_toggle_enum) { //this is toggle enum
		case TOGGLE_ENUM.ENABLE_MASTER_AUDIO:
			_toggle_on = global.master_audio_enable
		break;
		case TOGGLE_ENUM.ENABLE_SFX:
			_toggle_on = global.sfx_enable
		break;
		case TOGGLE_ENUM.ENABLE_MUSIC:
			_toggle_on = global.music_enable
		break;
		case TOGGLE_ENUM.ENABLE_AMBIENCE:
			_toggle_on = global.ambience_enable
		break;
	}
		
	if _toggle_on {
		var _subimg = 1 //on
	} else {
		var _subimg = 0 //off	
	}
	
	//Draw the sprite
	draw_sprite(s_toggle_16x, _subimg, x + width/2 + 11, y)
	
}
