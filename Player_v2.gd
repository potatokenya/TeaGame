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
		if collider.name == "pom_port":
			print("hit")
			entered_gate_pom.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_port":
			print("hit")
			entered_gate_passion.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_port_2":
			print("hit")
			entered_gate_passion_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_port":
			print("hit")
			entered_gate_GB.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_port_2":
			print("hit")
			entered_gate_GB_2.emit()



	#order 4
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_port_3":
			print("hit")
			entered_gate_GB_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_port_4":
			print("hit")
			entered_gate_GB_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "GB_port_5":
			print("hit")
			entered_gate_GB_5.emit()
			
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "strawberry_port":
			print("hit")
			entered_gate_strawberry.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_port_2":
			print("hit")
			entered_gate_pom_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_port_3":
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
			
			



#order 5
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_port_4":
			print("hit")
			entered_gate_pom_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_port_5":
			print("hit")
			entered_gate_pom_5.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "pom_port_6":
			print("hit")
			entered_gate_pom_6.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_port_3":
			print("hit")
			entered_gate_passion_3.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_port_4":
			print("hit")
			entered_gate_passion_4.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "passion_port_5":
			print("hit")
			entered_gate_passion_5.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "tapioka_port_2":
			print("hit")
			entered_gate_tapioka_2.emit()
			
	if collision != null:
		var collider = collision.get_collider()
		if collider.name == "brownsugar_port":
			print("hit")
			entered_gate_syrup.emit()
			
			
	if velocity.y < 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
		if visible_animation_player:
			visible_animation_player.play("real")
		
	if velocity.y > 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
		if visible_animation_player:
			visible_animation_player.play("real")
	
	if velocity.y == 0:                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
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
	get_tree().change_scene_to_file("res://Menu2.tscn")
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


func _on_area_2d_body_entered(_body):
	get_tree().change_scene_to_file("res://Menu3.tscn")
	tea.teac = 'empty'
	tea.topping = 'empty'




#order 3 :3
@onready var blue_sprite_2 = $Player_blue_2
@onready var blue_ani_2 = $Player_blue_2/blue_ap_2
@onready var blue_pom_sprite = $Player_blue_pom
@onready var blue_pom_ani = $Player_blue_pom/blue_pom_ap

func _on_blueberry_farve_2_body_entered(_body):
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
		blue_pom_sprite.show()
		blue_pom_ani.play('blue_pom_ani')
		tea.teac = 'blue'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)

	
@onready var taro_sprite_2 = $Player_taro_2
@onready var taro_ani_2 = $Player_taro_2/taro_ap_2
@onready var taro_pom_sprite = $Player_taro_pom
@onready var taro_pom_ani = $Player_taro_pom/taro_pom_ap

func _on_taro_farve_2_body_entered(_body):
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

func _on_pom_b_body_entered(_body):
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


func _on_passion_farve_body_entered(_body):
	if tea.teac == 'blue' and tea.topping == 'empty':
		print("Body entered")
		blue_sprite_2.hide()
		passion_sprite.show()
		passion_ani.play('passion_ani')
		tea.teac = 'passion'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)
	if tea.teac == 'taro' and tea.topping == 'GB':
		taro_gb_sprite.hide()
		passion_gb_sprite.show()
		passion_gb_ani.play('passion_gb_ani')
		tea.teac = 'passion'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)
	if tea.teac == 'blue' and tea.topping == 'pom':
		print("Body entered")
		blue_pom_sprite.hide()
		passion_pom_sprite.show()
		passion_pom_ani.play('passion_pom_ani')
		tea.teac = 'passion'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)

@onready var taro_gb_sprite = $Player_taro_gb
@onready var taro_gb_ani = $Player_taro_gb/taro_gb_ap
@onready var passion_gb_sprite = $Player_passion_gb
@onready var passion_gb_ani = $Player_passion_gb/passion_gb_ap

func _on_gb_body_entered(_body):
	if tea.teac == 'taro' and tea.topping == 'pom':
		print("Body entered")
		taro_pom_sprite.hide()
		taro_gb_sprite.show()
		taro_gb_ani.play('taro_gb_ani')
		tea.teac = 'taro'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'passion' and tea.topping == 'pom':
		print("Body entered")
		passion_pom_sprite.hide()
		passion_gb_sprite.show()
		passion_gb_ani.play('passion_gb_ani')
		tea.teac = 'passion'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)

func _on_kunde_3_body_entered(_body):
	get_tree().change_scene_to_file("res://Menu4.tscn")
	tea.teac = 'empty'
	tea.topping = 'empty'



#order 4
@onready var gb_sprite = $Player_gb
@onready var gb_ani = $Player_gb/GB_ap
@onready var pom_sprite = $Player_pom
@onready var pom_ani = $Player_pom/pom_ap

func _on_gb_2_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		gb_sprite.show()
		gb_ani.play('GB_ani')
		tea.teac = 'empty'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'empty' and tea.topping == 'pom':
		print("Body entered")
		pom_sprite.hide()
		gb_sprite.show()
		gb_ani.play('GB_ani')
		tea.teac = 'empty'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)
		

@onready var milktea_gb_sprite = $Player_milktea_gb
@onready var milktea_gb_ani = $Player_milktea_gb/milktea_gb_ap

func _on_milktea_farve_2_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'GB':
		print("Body entered")
		gb_sprite.hide()
		milktea_gb_sprite.show()
		milktea_gb_ani.play('milktea_gb_ani')
		tea.teac = 'milktea'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)
		

@onready var strawberry_gb_sprite = $Player_strawberry_gb
@onready var strawberry_gb_ani = $Player_strawberry_gb/strawberry_gb_ap
@onready var strawberry_pom_sprite = $Player_strawberry_pom
@onready var strawberry_pom_ani = $Player_strawberry_pom/strawberry_pom_ap

func _on_strawberry_farve_body_entered(_body):
	if tea.teac == 'milktea' and tea.topping == 'GB':
		print("Body entered")
		milktea_gb_sprite.hide()
		strawberry_gb_sprite.show()
		strawberry_gb_ani.play('strawberry_gb_ani')
		tea.teac = 'strawberry'
		tea.topping = 'GB'
		print(tea.teac, tea.topping)


func _on_pom_b_2_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'GB':
		print("Body entered")
		gb_sprite.hide()
		pom_sprite.show()
		pom_ani.play('pom_ani')
		tea.teac = 'empty'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)
		
	if tea.teac == 'strawberry' and tea.topping == 'GB':
		print("Body entered")
		strawberry_gb_sprite.hide()
		strawberry_pom_sprite.show()
		strawberry_pom_ani.play('strawberry_pom_ani')
		tea.teac = 'strawberry'
		tea.topping = 'pom'
		print(tea.teac, tea.topping)
		

func _on_kunde_4_body_entered(_body):
	get_tree().change_scene_to_file("res://Menu5.tscn")
	tea.teac = 'empty'
	tea.topping = 'empty'




#order 5
@onready var passion_sprite_2 = $Player_passion_2
@onready var passion_ani_2 = $Player_passion_2/passion_ap_2



func _on_passion_farve_2_body_entered(_body):
	if tea.teac == 'empty' and tea.topping == 'empty':
		print("Body entered")
		tom_sprite.hide()
		passion_sprite_2.show()
		passion_ani_2.play('passion_ani_2')
		tea.teac = 'passion'
		tea.topping = 'empty'
		print(tea.teac, tea.topping)

@onready var passion_gb_sprite_2 = $Player_passion_gb_2
@onready var passion_gb_ani_2 = $Player_passion_gb_2/passion_gb_ap_2

@onready var passion_pom_sprite_2 = $Player_passion_pom_2
@onready var passion_pom_ani_2 = $Player_passion_pom_2/passion_pom_ap_2

@onready var passion_t_sprite = $Player_passion_t
@onready var passion_t_ani = $Player_passion_t/passion_t_ap

func _on_pom_b_3_body_entered(_body):
	if tea.teac == 'passion' and tea.topping == 'empty':
		print("Body entered")
		passion_sprite_2.hide()
		passion_pom_sprite_2.show()
		passion_pom_ani_2.play('passion_pom_ani_2')
		tea.teac = 'passion'
		tea.topping ='pom'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'passion' and tea.topping == 'GB':
		print("Body entered")
		passion_gb_sprite_2.hide()
		passion_pom_sprite_2.show()
		passion_pom_ani_2.play('passion_pom_ani_2')
		tea.teac = 'passion'
		tea.topping ='pom'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'passion' and tea.topping == 'tapioka':
		print("Body entered")
		passion_t_sprite.hide()
		passion_pom_sprite_2.show()
		passion_pom_ani_2.play('passion_pom_ani_2')
		tea.teac = 'passion'
		tea.topping ='pom'
		print(tea.teac, tea.topping)



func _on_gb_3_body_entered(_body):
	if tea.teac == 'passion' and tea.topping == 'empty':
		print("Body entered")
		passion_sprite_2.hide()
		passion_gb_sprite_2.show()
		passion_gb_ani_2.play('passion_gb_ani_2')
		tea.teac = 'passion'
		tea.topping ='GB'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'passion' and tea.topping == 'pom':
		print("Body entered")
		passion_pom_sprite_2.hide()
		passion_gb_sprite_2.show()
		passion_gb_ani_2.play('passion_gb_ani_2')
		tea.teac = 'passion'
		tea.topping ='GB'
		print(tea.teac, tea.topping)
	
	if tea.teac == 'passion' and tea.topping == 'tapioka':
		print("Body entered")
		passion_t_sprite.hide()
		passion_gb_sprite_2.show()
		passion_gb_ani_2.play('passion_gb_ani_2')
		tea.teac = 'passion'
		tea.topping ='GB'
		print(tea.teac, tea.topping)


func _on_t_3_body_entered(_body):
	if tea.teac == 'passion' and tea.topping == 'pom':
		print("Body entered")
		passion_pom_sprite_2.hide()
		passion_t_sprite.show()
		passion_t_ani.play('passion_t_ani')
		tea.teac = 'passion'
		tea.topping ='tapioka'
		print(tea.teac, tea.topping)

@onready var milktea_t_sprite = $Player_milktea_t
@onready var milktea_t_ani = $Player_milktea_t/milktea_t_ap

@onready var brownsugar_sprite = $Player_brownsugar
@onready var brownsugar_ani = $Player_brownsugar/brownsugar_ap

@onready var passion_bs_sprite = $Player_passion_bs
@onready var passion_bs_ani = $Player_passion_bs/passion_bs_ap

@onready var milktea_bs_pom_sprite = $Player_milktea_bs_pom
@onready var milktea_bs_pom_ani = $Player_milktea_bs_pom/milktea_bs_pom_ap

@onready var milktea_pom_sprite = $Player_milktea_pom
@onready var milktea_pom_ani = $Player_milktea_pom/milktea_pom_ap


func _on_milktea_farve_3_body_entered(_body):
	if tea.teac == 'passion' and tea.topping == 'pom' and tea.sirup == 'empty':
		print("Body entered")
		passion_pom_sprite_2.hide()
		milktea_pom_sprite.show()
		milktea_pom_ani.play('milktea_pom_ani')
		tea.teac = 'milktea'
		tea.topping ='pom'
		print(tea.teac, tea.topping)

	if tea.teac == 'passion' and tea.topping == 'tapioka' and tea.sirup == 'empty':
		print("Body entered")
		passion_t_sprite.hide()
		milktea_t_sprite.show()
		milktea_t_ani.play('milktea_t_ani')
		tea.teac = 'milktea'
		tea.topping ='tapioka'
		print(tea.teac, tea.topping)
		
	if tea.teac == 'passion' and tea.topping == 'pom' and tea.sirup == 'bs':
		print("Body entered")
		passion_bs_sprite.hide()
		milktea_bs_pom_sprite.show()
		milktea_bs_pom_ani.play('milktea_bs_pom_ani')
		tea.teac = 'milktea'
		tea.topping ='pom'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping)

	if tea.teac == 'passion' and tea.topping == 'tapioka' and tea.sirup == 'bs':
		print("Body entered")
		passion_bs_sprite.hide()
		brownsugar_sprite.show()
		brownsugar_ani.play('brownsugar_ani')
		tea.teac = 'milktea'
		tea.topping ='tapioka'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping)
		

func _on_syrup_body_entered(_body):
	if tea.teac == 'passion' and tea.topping == 'pom':
		print("Body entered")
		passion_pom_sprite_2.hide()
		passion_bs_sprite.show()
		passion_bs_ani.play('passion_bs_ani')
		tea.teac = 'passion'
		tea.topping ='pom'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping,tea.sirup)

	if tea.teac == 'passion' and tea.topping == 'tapioka':
		print("Body entered")
		passion_t_sprite.hide()
		passion_bs_sprite.show()
		passion_bs_ani.play('passion_bs_ani')
		tea.teac = 'passion'
		tea.topping ='tapioka'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping, tea.sirup)
		
	if tea.teac == 'milktea' and tea.topping == 'pom':
		print("Body entered")
		milktea_pom_sprite.hide()
		milktea_bs_pom_sprite.show()
		milktea_bs_pom_ani.play('milktea_bs_pom_ani')
		tea.teac = 'milktea'
		tea.topping ='pom'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping,tea.sirup)

	if tea.teac == 'milktea' and tea.topping == 'tapioka':
		print("Body entered")
		milktea_t_sprite.hide()
		brownsugar_sprite.show()
		brownsugar_ani.play('brownsugar_ani')
		tea.teac = 'milktea'
		tea.topping ='tapioka'
		tea.sirup = 'bs'
		print(tea.teac, tea.topping, tea.sirup)


func _on_kunde_5_body_entered(_body):
	get_tree().change_scene_to_file("res://Menu6.tscn")
	tea.teac = 'empty'
	tea.topping = 'empty'
