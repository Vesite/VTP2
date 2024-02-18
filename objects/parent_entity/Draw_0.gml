
if flash > 0 {
	shader_set(sh_flash)
}
if not P {
	flash = max(flash - 1, 0)
}

// Draw self
draw_self()

shader_reset()
