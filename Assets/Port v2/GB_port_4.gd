extends StaticBody2D

@onready var ap_GB_4 = $ap_GB_4
@onready var timer = $Timer
@onready var GB_port_collision_4 = $GB_port_collision_4

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_GB_4.play("GB_port_close_4")
	GB_port_collision_4.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_gb_4():
	print("GB_port_4")
	if tea.teac == 'GB_4':
		ap_GB_4.play("GB_port_open_4")
		print("GB open_4")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		GB_port_collision_4.set_deferred('disabled', true)
		$GB_port_collision_4.disabled = true
	else:
		$GB_port_collision_4.disabled = false
		GB_port_collision_4.set_deferred('disabled', false)
		
