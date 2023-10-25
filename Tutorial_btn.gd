extends Button

func _on_Tutorial_btn_pressed():
	assert(get_tree().change_scene_to_file("res://Tutorial.tscn") == OK)

