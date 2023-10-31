extends StaticBody2D
@onready var ap_blueberry_2 = $ap_blueberry_2
@onready var timer = $Timer
@onready var blueberry_port_collision_2 = $blueberry_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_blueberry_2.play("blueberry_port_close_2")
	blueberry_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_blueberry_2():
	print("blueberry_port_2")
	if tea.teac == 'blue':
		ap_blueberry_2.play("blueberry_port_open_2")
		print("blueberry open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		blueberry_port_collision_2.set_deferred('disabled', true)
		$blueberry_port_collision_2.disabled = true
	else:
		$blueberry_port_collision_2.disabled = false
		blueberry_port_collision_2.set_deferred('disabled', false)
		
