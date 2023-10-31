extends StaticBody2D

@onready var ap_GB_2 = $ap_GB_2
@onready var timer = $Timer
@onready var GB_port_collision_2 = $GB_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_GB_2.play("GB_port_close_2")
	GB_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_gb_2():
	print("GB_port_2")
	if tea.topping == 'GB':
		ap_GB_2.play("GB_port_open_2")
		print("GB open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		GB_port_collision_2.set_deferred('disabled', true)
		$GB_port_collision_2.disabled = true
	else:
		$GB_port_collision_2.disabled = false
		GB_port_collision_2.set_deferred('disabled', false)
		
