extends TextureRect


func _on_timer_timeout():
	queue_free()
	
