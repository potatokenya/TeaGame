extends StaticBody2D
@onready var ap_taro = $ap_taro
@onready var timer = $Timer
@onready var taro_port_collision = $taro_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_taro.play("taro_port_close")
	taro_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_taro():
	print("taro_port")
	if tea.teac == 'taro':
		ap_taro.play("taro_port_open")
		print("taro open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		taro_port_collision.set_deferred('disabled', true)
		$taro_port_collision.disabled = true
	else:
		$taro_port_collision.disabled = false
		taro_port_collision.set_deferred('disabled', false)
		
