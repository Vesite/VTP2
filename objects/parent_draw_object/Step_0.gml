
if P exit

if duration != -1 {
	duration = max(duration - 1, 0)
	if duration == 0 instance_destroy()
}
