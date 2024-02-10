/// @desc

var _m = global.master_audio_volume

/*
if global.sfx_enable and global.master_audio_enable
	VinylGainSet("sfx", global.sfx_volume*_m)
else
	VinylGainSet("sfx", 0)

if global.music_enable and global.master_audio_enable
	VinylGainSet("music", global.sfx_volume*_m)
else
	VinylGainSet("music", 0)

if global.ambience_enable and global.master_audio_enable
	VinylGainSet("ambience", global.sfx_volume*_m)
else
	VinylGainSet("ambience", 0)




//if global.sfx_enable and global.master_audio_enable
//	audio_emitter_gain(global.ae_sfx, global.sfx_volume*_m)
//else
//	audio_emitter_gain(global.ae_sfx, 0)

//if global.music_enable and global.master_audio_enable
//	audio_emitter_gain(global.ae_music, global.music_volume*_m)
//else
//	audio_emitter_gain(global.ae_music, 0)

//if global.ambience_enable and global.master_audio_enable
//	audio_emitter_gain(global.ae_ambience, global.ambience_volume*_m)
//else
//	audio_emitter_gain(global.ae_ambience, 0)

