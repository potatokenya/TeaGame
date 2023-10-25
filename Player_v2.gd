extends CharacterBody2D
@export var move_speed : float = 150
@export var vel = Vector2.ZERO
@export var newCharacterPath: NodePath


signal entered_gate
signal entered_gate_taro

var visible_animation_player: AnimationPlayer

func _ready():
	visible_animation_player = $Tom/AnimationPlayer1
	print(tea.teac)
	
func _physics_process(delta):
	var move_dir = Vector2()
	move_dir.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	move_dir.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	move_dir = move_dir.normalized()
	
	# Moving player
	velocity = move_dir * move_speed
	var collision = move_and_collide(velocity * delta)
	
	#han lavede det her
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "Blueberry_port":
			print("hit")
			entered_gate.emit()
	
	if velocity.y < 0:
		if visible_animation_player:
			visible_animation_player.play("real")
	
	
	
		
@onready var tom_sprite = $Tom
@onready var blue_sprite = $Player_blue
@onready var blue_animation_player = $Player_blue/AnimationPlayer



func _on_blueberry_farve_body_entered(_body):
	print("Body entered")
	tom_sprite.hide()
	blue_sprite.show()
	blue_animation_player.play("New Anim")
	tea.teac = 'blue'
	print(tea.teac)

@onready var taro_sprite = $Player_taro
@onready var taro_animation_player = $Player_taro/taro_ani

func _on_taro_farve_body_entered(body):
	print("Body entered")
	blue_sprite.hide()
	taro_sprite.show()
	taro_animation_player.play("taro_ani")
	tea.teac = 'taro'
	print(tea.teac)

