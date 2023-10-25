extends Button

func _on_Button5_pressed():
	assert(get_tree().change_scene_to_file("res://Order5.tscn") == OK)
