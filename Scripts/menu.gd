extends Control

#@export_file var game.tscn
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

#func _on_start_pressed():
	#get_tree().change_scene_to_file(eightto5cape.tsnc)

func _on_quit_pressed():
	get_tree().quit()

func _on_check_button_toggled(toggled_on):
	global.head_bob_activated = toggled_on
