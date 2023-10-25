extends Area2D


@export var move_speed : float = 110
@export var velocity = Vector2.ZERO
@export var newCharacterPath: NodePath

func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), 
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)

	print(input_direction)

	velocity = input_direction * move_speed

# warning-ignore:return_value_discarded
	#move_and_slide(velocity, Vector2.ZERO)

	if velocity.y < 0:
		$AnimationPlayer.play("Player_tom")
