extends CharacterBody2D
@export var move_speed : float = 180
@export var vel = Vector2.ZERO
@export var newCharacterPath: NodePath

#order 1 signals
signal entered_gate
signal entered_gate_taro
signal entered_gate_taro_2
signal entered_gate_tapioka
signal entered_gate_lychee
signal entered_gate_tapioka_3

#order 2 signals
signal entered_gate_honeymelon
signal entered_gate_lychee_2
signal entered_gate_milktea_1
signal entered_gate_lychee_3

#order 3 signals
signal entered_gate_blueberry_2
signal entered_gate_taro_3
signal entered_gate_pom
signal entered_gate_passion
signal entered_gate_passion_2
signal entered_gate_GB
signal entered_gate_GB_2
signal entered_gate_GB_3
signal entered_gate_GB_4
signal entered_gate_GB_5
signal entered_gate_strawberry
signal entered_gate_pom_2
signal entered_gate_pom_3
signal entered_gate_milktea_2
signal entered_gate_milktea_3
signal entered_gate_pom_4
signal entered_gate_pom_5
signal entered_gate_pom_6
signal entered_gate_passion_3
signal entered_gate_passion_4
signal entered_gate_passion_5
signal entered_gate_tapioka_2
signal entered_gate_syrup

var visible_animation_player: AnimationPlayer

func _ready():
	visible_animation_player = $Tom/AnimationPlayer1
	print(tea.teac)
	print(tea.topping)
	
func _physics_process(delta):
	var move_dir = Vector2()
	move_dir.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	move_dir.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	move_dir = move_dir.normalized()
	
	# Moving player
	velocity = move_dir * move_speed
	var collision = move_and_collide(velocity * delta)
	
	#order 1 signals
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "Blueberry_port":
			print("hit")
			entered_gate.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "Taro_port":
			print("hit")
			entered_gate_taro.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "taro_port_2":
			print("hit")
			entered_gate_taro_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "tapioka_port":
			print("hit")
			entered_gate_tapioka.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "lychee_port":
			print("hit")
			entered_gate_lychee.emit()
	
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "tapioka_port_3":
			print("hit")
			entered_gate_tapioka_3.emit()

	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "Kunde1":
			print("hit")
			entered_gate_tapioka_3.emit()

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
		if collider.name == "milktea_port_1":
			print("hit")
			entered_gate_milktea_1.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "lychee_port_3":
			print("hit")
			entered_gate_lychee_3.emit()
			
	

	#order 3 signals emits
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "blueberry_port_2":
			print("hit")
			entered_gate_blueberry_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "taro_port_3":
			print("hit")
			entered_gate_taro_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom":
			print("hit")
			entered_gate_pom.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion":
			print("hit")
			entered_gate_passion.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_2":
			print("hit")
			entered_gate_passion_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB":
			print("hit")
			entered_gate_GB.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_2":
			print("hit")
			entered_gate_GB_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_3":
			print("hit")
			entered_gate_GB_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_4":
			print("hit")
			entered_gate_GB_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_5":
			print("hit")
			entered_gate_GB_5.emit()
			
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "strawberry":
			print("hit")
			entered_gate_strawberry.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_2":
			print("hit")
			entered_gate_pom_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_3":
			print("hit")
			entered_gate_pom_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "milktea_port_2":
			print("hit")
			entered_gate_milktea_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "milktea_port_3":
			print("hit")
			entered_gate_milktea_3.emit()
			
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_4":
			print("hit")
			entered_gate_pom_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_5":
			print("hit")
			entered_gate_pom_5.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_6":
			print("hit")
			entered_gate_pom_6.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_3":
			print("hit")
			entered_gate_passion_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_4":
			print("hit")
			entered_gate_passion_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_5":
			print("hit")
			entered_gate_passion_5.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "tapioka_2":
			print("hit")
			entered_gate_tapioka_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "syrup":
			print("hit")
			entered_gate_syrup.emit()
			
			
	if velocity.y < 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
		if visible_animation_player:
			visible_animation_player.play("real")


#Order 1

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

func _on_taro_farve_body_entered(_body):
	print("Body entered")
	blue_sprite.hide()
	taro_sprite.show()
	taro_animation_player.play("taro_ani")
	tea.teac = 'taro'
	print(tea.teac)

@onready var taro_lj_sprite = $Player_taro_lj
@onready var taro_lj_ani = $Player_taro_lj/AnimationPlayer

func _on_lj_body_entered(_body):
	if tea.teac == 'taro' and tea.topping == 'empty':
		print("Body entered")
		taro_sprite.hide()
		taro_lj_sprite.show()
		taro_lj_ani.play("taro_lj_ani")
		tea.teac = 'taro'
		tea.topping ='lychee'
		print(tea.teac, tea.topping)
	if tea.teac == 'taro' and tea.topping == 'tapioka':
		print("Body entered")
		taro_t_sprite.hide()
		taro_lj_sprite.show()
		taro_lj_ani.play("taro_lj_ani")
		tea.teac = 'taro'
		tea.topping ='lychee'
		print(tea.teac, tea.topping)

@onready var taro_t_sprite = $Player_taro_t
@onready var taro_t_ani = $Player_taro_t/taro_t_ani

func _on_t_body_entered(_body):
	if tea.teac == 'taro'and tea.topping == 'empty':
		print("Body entered")
		taro_sprite.hide()
		taro_t_sprite.show()
		taro_t_ani.play("taro_t_ani")
		tea.teac = 'taro'
		tea.topping ='tapioka'
		print(tea.teac, tea.topping)
	if tea.topping == 'lychee':
		print("Body entered")
		taro_lj_sprite.hide()
		taro_t_sprite.show()
		taro_t_ani.play("taro_t_ani")
		tea.teac = 'taro'
		tea.topping ='tapioka'
		print(tea.teac, tea.topping)


func _on_t_2_body_entered(_body):
	print("Body entered")
	taro_lj_sprite.hide()
	taro_t_sprite.show()
	taro_t_ani.play("taro_t_ani")
	tea.teac = 'taro'
	tea.topping ='tapioka'
	print(tea.teac, tea.topping)


func _on_kunde_1_body_entered(_body):
	assert(get_tree().change_scene_to_file("res://Menu2.tscn") == OK)
	tea.teac = 'empty'
	tea.topping = 'empty'
	visible_animation_player.play("real")

#Order 2
@onready var honey_sprite = $Player_honey
@onready var honey_ani = $Player_honey/honey_ani

func _on_greenapple_farve_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
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


func _on_lj_2_body_entered(_body):
	if tea.teac == 'honey' and tea.topping == 'empty':
		print("Body entered")
		honey_sprite.hide()
		honey_lj_sprite.show()
		honey_lj_ani.play('honey_lj_ani')
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
		milktea_lj_ani.play('milktea_lj_ani')
		tea.teac = 'milktea'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'honey' and tea.topping == 'empty':
		print('Body entered')
		honey_sprite.hide()
		milktea_sprite.show()
		milktea_ani.play("milktea_ani")
		tea.teac = 'milktea'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		milktea_sprite.show()
		milktea_ani.play('milktea_ani')
		tea.teac = 'milktea'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)


func _on_area_2d_body_entered(body):
	assert(get_tree().change_scene_to_file("res://Menu3.tscn") == OK)
	tea.teac = 'empty'
	tea.topping = 'empty'

#order 3 :3
@onready var blue_sprite_2 = $Player_blue_2
@onready var blue_ani_2 = $Player_blue_2/blue_ap_2

func _on_blueberry_farve_2_body_entered(body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		blue_sprite_2.show()
		blue_ani_2.play('blue_ani_2')
		tea.teac = 'blue'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)
	if tea.teac == 'taro' and tea.topping == 'empty':
		print("Body entered")
		taro_sprite_2.hide()
		blue_sprite_2.show()
		blue_ani_2.play('blue_ani_2')
		tea.teac = 'blue'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)
	if tea.teac == 'taro' and tea.topping == 'pom':
		print("Body entered")
		taro_pom_sprite.hide()
		blue_sprite_2.show()
		blue_ani_2.play('blue_ani_2')
		tea.teac = 'blue'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)

	
@onready var taro_sprite_2 = $Player_taro_2
@onready var taro_ani_2 = $Player_taro_2/taro_ap_2
@onready var taro_pom_sprite = $Player_taro_pom
@onready var taro_pom_ani = $Player_taro_pom/taro_pom_ap

func _on_taro_farve_2_body_entered(body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		taro_sprite_2.show()
		taro_ani_2.play('taro_ani_2')
		tea.teac = 'taro'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)
	if tea.teac == 'blue' and tea.topping == 'empty':
		print("Body entered")
		blue_sprite_2.hide()
		taro_sprite_2.show()
		taro_ani_2.play('taro_ani_2')
		tea.teac = 'taro'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)

@onready var passion_sprite = $Player_passion
@onready var passion_ani = $Player_passion/passion_ap
@onready var passion_pom_sprite = $Player_passion_pom
@onready var passion_pom_ani = $Player_passion_pom/passion_pom_ap

func _on_pom_b_body_entered(body):
	if tea.teac == 'taro' and tea.topping == 'empty':
		print("Body entered")
		taro_sprite_2.hide()
		taro_pom_sprite.show()
		taro_pom_ani.play('taro_pom_ani')
		tea.teac = 'taro'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)
		
	if tea.teac == 'passion' and tea.topping == 'empty':
		print("Body entered")
		passion_sprite.hide()
		passion_pom_sprite.show()
		passion_pom_ani.play('passiom_pom_ani')
		tea.teac = 'passion'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)


func _on_passion_farve_body_entered(body):
	if tea.teac == 'blue' and tea.topping == 'empty':
		print("Body entered")
		blue_sprite_2.hide()
		passion_sprite.show()
		passion_ani.play('passion_ani')
		tea.teac = 'passion'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)

@onready var taro_gb_sprite = $Player_taro_gb
@onready var taro_gb_ani = $Player_taro_gb/taro_gb_ap

func _on_gb_body_entered(body):
	if tea.teac == 'taro' and tea.topping == 'pom':
		taro_pom_sprite.hide()
		taro_gb_sprite.show()
		taro_gb_ani.play('taro_gb_ani')
		tea.teac = 'taro'
		tea.topping = 'gb'
		print(tea.teac, tea.topping)
