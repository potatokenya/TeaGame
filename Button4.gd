extends Button


func _on_Button4_pressed():
	assert(get_tree().change_scene_to_file("res://Order4.tscn") == OK)
