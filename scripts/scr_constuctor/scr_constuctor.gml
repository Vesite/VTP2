
#region Buttons

	/*
	This one should only be used in its childrens constructor functions
	"_button_d_dist" is the distance the button "inside" moves down when its clicked
	*/
	function mycon_parent_button_dynamic(_obj, _x=0, _y=0, _depth=GUI_BUTTON_DEPTH, _width=-1, _height=-1,
										  _script=default_func,
										  _scr_arg_1=undefined, _scr_arg_2=undefined,
										  _draw_in_gui=false, _sprite_9slice=s_nothing, _button_d_dist=0) {
	
		var _id = instance_create_depth(_x, _y, _depth, _obj)
	
		_id.width = _width
		_id.height = _height

		_id.clicked_script = _script
		_id.clicked_script_arg_1 = _scr_arg_1
		_id.clicked_script_arg_2 = _scr_arg_2
	
		_id.draw_in_gui = _draw_in_gui
	
		_id.sprite_9slice = _sprite_9slice
		_id.button_d_dist = _button_d_dist
	
		return _id
	
	}

	/*
	Click the button to run a script
	"_icon_sprite_highlight" highlights the sprite when hovered, does not currently work properly because all sprites are cropped small
	"is_toggle" needs the script to be a toggle script?
	*/
	function mycon_button_dynamic_basic(_x=0, _y=0, _depth=GUI_BUTTON_DEPTH, _width=-1, _height=-1, _text="", _size_match_text=false, _icon_spr=s_nothing,
										_script=default_func,
										_scr_arg_1=undefined, _scr_arg_2=undefined,
										_is_toggle=false, _draw_in_gui=false, _sprite_9slice=s_nothing, _button_d_dist=0, _icon_sprite_highlight=false) {
	
		var _id = mycon_parent_button_dynamic(HCON_button_dynamic_basic, _x, _y, _depth, _width, _height, _script, _scr_arg_1, _scr_arg_2, _draw_in_gui, _sprite_9slice, _button_d_dist)
	
		_id.text = _text
		_id.size_match_text = _size_match_text
		_id.icon_sprite = _icon_spr
		_id.is_toggle = _is_toggle
		
		if _size_match_text {
			_id.width = string_width(_text) + 24
			_id.height = string_height(_text) + 14
		}
		
		//Set the sprite Highlight Shaders
		_id.icon_sprite_highlight = _icon_sprite_highlight
		if _icon_sprite_highlight {
			with (_id) {
				upixel_w = shader_get_uniform(sh_outline_yellow, "pixelW")
				upixel_h = shader_get_uniform(sh_outline_yellow, "pixelH")
				var _s = sprite_get_texture(icon_sprite, 0)
				texel_w = texture_get_texel_width(_s)
				texel_h = texture_get_texel_height(_s)
			}
		}
	
		return _id
	
	}
	
	/*
	Each slider needs an ENUM "connection" thing to know what variable it is modifying
	*/
	function mycon_button_slider(_x=0, _y=0, _depth=GUI_BUTTON_DEPTH, _slider_width=100, _height=50,
								 _sl_spr=s_slider, _sl_handle_spr=s_slider_handle, _sl_handle_width=8, _sl_handle_height=14,
								 _icon_spr=noone, _text="", _slider_enum=SLIDER_ENUM.VOLUME_MASTER,
								 _sprite_9slice=s_9slice_c_bg_frame_gray, _draw_in_gui=false) {
		
		var _id = mycon_parent_button_dynamic(HCON_button_slider, _x, _y, _depth, 10, _height, default_func, undefined, undefined, _draw_in_gui, _sprite_9slice, 0)
		
		_id.slider_sprite = _sl_spr
		_id.text = _text
		
		_id.slider_width = _slider_width
		
		_id.slider_handle_sprite = _sl_handle_spr
		_id.slider_handle_width = _sl_handle_width
		_id.slider_handle_height = _sl_handle_height
		
		_id.icon_sprite = _icon_spr
		
		_id.slider_enum = _slider_enum
		
		//After Init
		with (_id) {
			event_user(10)	
		}
		
		return _id
	
	}

#endregion




function mycon_draw_circle(_x, _y, _layer, _duration, _radius, _outline, _col1, _col2) {
	
	var _id = instance_create_layer(_x, _y, _layer, HCON_draw_circle)
	
	_id.duration_max = _duration
	_id.duration = _duration
	
	_id.outline = _outline
	_id.col1 = _col1
	_id.col2 = _col2
	_id.radius = _radius
	
	return _id
	
}

function mycon_draw_line(_duration, _layer, _x1, _y1, _x2, _y2, _width, _col1, _col2) {
	
	var _id = instance_create_layer(0, 0, _layer, HCON_draw_line)
	
	_id.duration_max = _duration
	_id.duration = _duration
	
	_id.x1 = _x1
	_id.y1 = _y1
	_id.x2 = _x2
	_id.y2 = _y2
	_id.line_width = _width
	_id.col1 = _col1
	_id.col2 = _col2
	
	return _id
	
}

function mycon_draw_text(_x, _y, _layer, _duration, _text, _shadow, _hsp, _vsp, _col) {
	
	var _id = instance_create_layer(_x, _y, _layer, HCON_draw_action_text)
	
	_id.duration_max = _duration
	_id.duration = _duration
	
	_id.text = _text
	_id.shadow = _shadow
	_id.hsp = _hsp
	_id.vsp = _vsp
	_id.col = _col
	
	return _id
	
}

function mycon_draw_sprite(_x, _y, _layer, _sprite, _die_on_anim_end=true, _duration=-1, _hsp=0, _vsp=0, _col=c_white) {
	
	var _id = instance_create_layer(_x, _y, _layer, HCON_draw_sprite)
	
	_id.sprite_index = _sprite
	
	_id.duration_max = _duration
	_id.duration = _duration
	
	_id.die_on_anim_end = _die_on_anim_end
	_id.hsp = _hsp
	_id.vsp = _vsp
	_id.col = _col
	
	return _id
	
}

/*
Only draws in GUI
*/
function mycon_draw_frame(_x, _y, _sprite, _depth, _image_index, _width, _height, _alpha, _col=c_white) {
	
	//Depth below normal GUI-depth
	var _id = instance_create_depth(_x, _y, _depth, HCON_draw_frame)
	
	_id.sprite_index = _sprite
	_id.image_index = _image_index
	
	_id.width = _width
	_id.height = _height
	
	_id.alpha = _alpha
	_id.col = _col
	
	
	return _id
	
}

