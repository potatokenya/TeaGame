extends Button

func _on_Play_btn_pressed():
	assert(get_tree().change_scene_to_file("res://Menu.tscn") == OK)
