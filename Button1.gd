extends Button



func _on_Button1_pressed():
	assert(get_tree().change_scene_to_file("res://Order1.tscn") == OK)
	
