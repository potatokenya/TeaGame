extends Button


func _on_Back_btn_pressed():
	assert(get_tree().change_scene_to_file("res://Front_page.tscn") == OK)
