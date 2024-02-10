


function toggle_value_from_enum(_toggle_enum) {
	
	switch (_toggle_enum) {
		case TOGGLE_ENUM.ENABLE_MASTER_AUDIO:
			global.master_audio_enable = !global.master_audio_enable
		break;
		case TOGGLE_ENUM.ENABLE_SFX:
			global.sfx_enable = !global.sfx_enable
		break;
		case TOGGLE_ENUM.ENABLE_MUSIC:
			global.music_enable = !global.music_enable
		break;
		case TOGGLE_ENUM.ENABLE_AMBIENCE:
			global.ambience_enable = !global.ambience_enable
		break;
	}
	
}

