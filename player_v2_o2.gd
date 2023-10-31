extends CharacterBody2D
@export var move_speed : float = 0
@export var vel = Vector2.ZERO
@export var newCharacterPath: NodePath

#order 2 signals
signal entered_gate_honeymelon
signal entered_gate_lychee_2
signal entered_gate_milktea_1
signal entered_gate_lychee_3

var visible_animation_player: AnimationPlayer

func _ready():
	visible_animation_player = $tom2/tom_ani_2
	print(tea.teac)
	print(tea.topping)
	
func _physics_process(delta):
	var move_dir = Vector2()
	
	if Input.get_action_strength("move_right"):
		move_dir.x -= move_speed
	
	if Input.get_action_strength("move_left"):
		move_dir.x += move_speed 
	
	if Input.get_action_strength("move_down"):
		move_dir.y += move_speed
	
	if Input.get_action_strength("move_up"):
		move_dir.y -= move_speed

	move_dir = move_dir.normalized()
	
	# Moving player
	velocity = move_dir * move_speed
	var collision = move_and_collide(velocity * delta)
	
	#order 2 signals
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "lychee_port_2":
			print("hit")
			entered_gate_lychee_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "honeymelon_port":
			print("hit")
			entered_gate_honeymelon.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "milktea_port":
			print("hit")
			entered_gate_milktea_1.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "lychee_port_3":
			print("hit")
			entered_gate_lychee_3.emit()
	
	if velocity.y < 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
		if visible_animation_player:
			visible_animation_player.play("tom_ani_2")

#Order 2
@onready var tom2_sprite = $tom2
@onready var honey_sprite = $Player_honey
@onready var honey_ani = $Player_honey/honey_ani

func _on_greenapple_farve_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom2_sprite.hide()
		honey_sprite.show()
		honey_ani.play("honey_ani")
		tea.teac = 'honey'
		tea.topping ='empty'
		print(tea.teac, tea.topping)

	if tea.teac == 'milktea' and tea.topping == 'lychee':
		print("Body entered")
		milktea_lj_sprite.hide()
		honey_lj_sprite.show()
		honey_lj_ani.play("honey_lj_ani")
		tea.teac = 'honey'
		tea.topping ='lychee'
		print(tea.teac, tea.topping)

	if tea.teac == 'milktea' and tea.topping == 'empty':
		print("Body entered")
		milktea_sprite.hide()
		honey_sprite.show()
		honey_ani.play("honey_ani")
		tea.teac = 'honey'
		tea.topping ='empty'
		print(tea.teac, tea.topping)
		

@onready var honey_lj_sprite = $Player_honey_lj
@onready var honey_lj_ani = $Player_honey_lj/honey_lj_ani

func _on_lj_2_body_exited(_body):
	if tea.teac == 'honey' and tea.topping == 'empty':
		print("Body entered")
		honey_sprite.hide()
		honey_lj_sprite.show()
		tea.topping = 'lychee'
		print(tea.teac, tea.topping)

@onready var milktea_sprite = $Player_milktea
@onready var milktea_ani = $Player_milktea/milktea_ani
@onready var milktea_lj_sprite = $Player_milktea_lj
@onready var milktea_lj_ani = $Player_milktea_lj/milktea_lj_ani

func _on_milktea_farve_body_entered(_body):
	if tea.teac == 'honey' and tea.topping == 'lychee':
		print('Body entered')
		honey_lj_sprite.hide()
		milktea_lj_sprite.show()
		tea.teac = 'milktea'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'honey' and tea.topping == 'empty':
		print('Body entered')
		honey_sprite.hide()
		milktea_sprite.show()
		tea.teac = 'milktea'
		print(tea.teac, tea.topping)
		
