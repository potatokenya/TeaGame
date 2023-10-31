extends CharacterBody2D

const SPEED = 200.0

var visible_animation_player: AnimationPlayer


func _ready():
	visible_animation_player = $player_tom/AnimationPlayer
	tea.teac = 'empty'
	tea.topping = 'empty'
	print(tea.teac)
	print(tea.topping)

func _physics_process(delta):
	var move_dir = Vector2(0, 0)
	if Input.is_action_pressed("move_up"):
		move_dir.y -= 1
	if Input.is_action_pressed("move_down"):
		move_dir.y += 1
	if Input.is_action_pressed("move_left"):
		move_dir.x -= 1
	if Input.is_action_pressed("move_right"):
		move_dir.x += 1
	move_dir = move_dir.normalized()
	
	var velocity = move_dir * SPEED
	move_and_collide(velocity * delta)
	
	if velocity.y < 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
		visible_animation_player.play("player_tom_ani")


@onready var tom_sprite = $player_tom

@onready var honey_sprite = $player_honey
@onready var honey_ap = $player_honey/honey_ap

func _on_greenapple_farve_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		honey_sprite.show()
		honey_ap.play("honey_ani")
		tea.teac = 'honey'
		tea.toping = 'empty'
		print(tea.teac,tea.topping)
	
		
