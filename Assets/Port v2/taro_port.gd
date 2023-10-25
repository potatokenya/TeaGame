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
	ap_taro.play("taro_port_closed")
	taro_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_taro():
	print("blue_port")
	if tea.teac == 'taro':
		ap_taro.play("taro_port_open")
		print("tarooo open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		taro_port_collision.set_deferred('disabled', true)
		$blue_port_collision.disabled = true
	else:
		$blue_port_collision.disabled = false
		taro_port_collision.set_deferred('disabled', false)
