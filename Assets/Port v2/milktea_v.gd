extends Sprite2D
@onready var ap_milktea = $ap_milktea
@onready var timer = $Timer
@onready var milktea_port_collision = $milktea_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_milktea.play("milktea_port_close")
	milktea_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_milktea():
	print("milktea_port")
	if tea.teac == 'milktea':
		ap_milktea.play("milktea_port_open")
		print("milktea open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		milktea_port_collision.set_deferred('disabled', true)
		$milktea_port_collision.disabled = true
	else:
		$milktea_port_collision.disabled = false
		milktea_port_collision.set_deferred('disabled', false)
		
