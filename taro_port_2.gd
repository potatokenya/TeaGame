extends StaticBody2D

@onready var ap_taro_2 = $ap_taro_2
@onready var timer = $Timer
@onready var taro_port_collision_2 = $taro_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_taro_2.play("taro_port_close_2")
	taro_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_taro_2():
	print("taro_port_2")
	if tea.teac == 'taro':
		ap_taro_2.play("taro_port_open_2")
		print("taro open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		taro_port_collision_2.set_deferred('disabled', true)
		$taro_port_collision_2.disabled = true
	else:
		$taro_port_collision_2.disabled = false
		taro_port_collision_2.set_deferred('disabled', false)
		
