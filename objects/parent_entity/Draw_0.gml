/// @desc

if flash > 0 {
	shader_set(sh_flash)
}
if not P {
	flash = max(flash - 1, 0)
}

//Draw self
event_user(8)

shader_reset()
