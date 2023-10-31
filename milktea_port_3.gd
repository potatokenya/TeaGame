extends StaticBody2D

@onready var ap_milktea_3 = $ap_milktea_3
@onready var timer = $Timer
@onready var milktea_port_collision_3 = $milktea_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_milktea_3.play("milktea_port_close_3")
	milktea_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_milktea_3():
	print("milktea_port_3")
	if tea.teac == 'milktea':
		ap_milktea_3.play("milktea_port_open_3")
		print("milktea open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		milktea_port_collision_3.set_deferred('disabled', true)
		$milktea_port_collision_3.disabled = true
	else:
		$milktea_port_collision_3.disabled = false
		milktea_port_collision_3.set_deferred('disabled', false)
		

