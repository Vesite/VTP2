
// Make the object a Singleton
if (assign_singleton() == false) exit

global.paused = true

button_list = ds_list_create()

text_on_screen = "Paused"
text_scale = 2

// Some menus we can quit with this, some not.
can_esq_remove_pause = false
