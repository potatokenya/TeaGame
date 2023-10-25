extends Button

func _on_Button2_pressed():
	assert(get_tree().change_scene_to_file("res://Order2.tscn") == OK)
