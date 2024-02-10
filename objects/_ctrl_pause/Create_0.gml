/// @desc

//Make the object a Singleton
if (assign_singleton() == false)	exit

button_list = ds_list_create()

text_on_screen = "Paused"
text_scale = 2
//some menus we can quit with this, some not.
can_esq_remove_pause = false
