extends Area2D

@onready var ap_milktea = $ap_milktea_1
@onready var timer = $Timer
@onready var milktea_port_collision = $milktea_port_collision_1

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_milktea.play("milktea_port_close_1")
	milktea_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_milktea_1():
	print("milktea_port_1")
	if tea.teac == 'milktea':
		ap_milktea.play("milktea_port_open_1")
		print("milktea open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		milktea_port_collision.set_deferred('disabled', true)
		$milktea_port_collision_1.disabled = true
	else:
		$milktea_port_collision_1.disabled = false
		milktea_port_collision.set_deferred('disabled', false)
		
