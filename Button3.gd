extends Button



func _on_Button3_pressed():
	assert(get_tree().change_scene_to_file("res://Order3.tscn") == OK)
