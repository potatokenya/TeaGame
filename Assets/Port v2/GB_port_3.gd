extends StaticBody2D

@onready var ap_GB_3 = $ap_GB_3
@onready var timer = $Timer
@onready var GB_port_collision_3 = $GB_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_GB_3.play("GB_port_close_3")
	GB_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_gb_3():
	print("GB_port_3")
	if tea.topping == 'GB':
		ap_GB_3.play("GB_port_open_3")
		print("GB open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		GB_port_collision_3.set_deferred('disabled', true)
		$GB_port_collision_3.disabled = true
	else:
		$GB_port_collision_3.disabled = false
		GB_port_collision_3.set_deferred('disabled', false)
		
