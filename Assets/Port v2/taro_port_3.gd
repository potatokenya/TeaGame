extends StaticBody2D

@onready var ap_taro_3 = $ap_taro_3
@onready var timer = $Timer
@onready var taro_port_collision_3 = $taro_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_taro_3.play("taro_port_close_3")
	taro_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_taro_3():
	print("taro_port_3")
	if tea.teac == 'taro':
		ap_taro_3.play("taro_port_open_3")
		print("taro open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		taro_port_collision_3.set_deferred('disabled', true)
		$taro_port_collision_3.disabled = true
	else:
		$taro_port_collision_3.disabled = false
		taro_port_collision_3.set_deferred('disabled', false)
		
