extends StaticBody2D
@onready var ap_strawberry_2 = $ap_strawberry_2
@onready var timer = $Timer
@onready var strawberry_port_collision_2 = $strawberry_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_strawberry_2.play("strawberry_port_close_2")
	strawberry_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_3():
	print("strawberry_port_2")
	if tea.teac == 'strawberry':
		ap_strawberry_2.play("strawberry_port_open_2")
		print("strawberry open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		strawberry_port_collision_2.set_deferred('disabled', true)
		$strawberry_port_collision_2.disabled = true
	else:
		$strawberry_port_collision_2.disabled = false
		strawberry_port_collision_2.set_deferred('disabled', false)
		
