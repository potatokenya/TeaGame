extends StaticBody2D
@onready var ap_honeymelon = $ap_honeymelon
@onready var timer = $Timer
@onready var honeymelon_port_collision = $honeymelon_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_honeymelon.play("honeymelon_port_close")
	honeymelon_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_honeymelon():
	print("honeymelon_port")
	if tea.teac == 'honeymelon':
		ap_honeymelon.play("honeymelon_port_open")
		print("honeymelon open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		honeymelon_port_collision.set_deferred('disabled', true)
		$honeymelon_port_collision.disabled = true
	else:
		$honeymelon_port_collision.disabled = false
		honeymelon_port_collision.set_deferred('disabled', false)
		


func _on_player_v_2_entered_gate_lychee_2():
	pass # Replace with function body.
