extends StaticBody2D

@onready var ap_milktea_2 = $ap_milktea_2
@onready var timer = $Timer
@onready var milktea_port_collision_2 = $milktea_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_milktea_2.play("milktea_port_close_2")
	milktea_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_milktea_2():
	print("milktea_port_2")
	if tea.teac == 'milktea':
		ap_milktea_2.play("milktea_port_open_2")
		print("milktea open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		milktea_port_collision_2.set_deferred('disabled', true)
		$milktea_port_collision_2.disabled = true
	else:
		$milktea_port_collision_2.disabled = false
		milktea_port_collision_2.set_deferred('disabled', false)
		

