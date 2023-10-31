extends StaticBody2D

@onready var ap_GB_5 = $ap_GB_5
@onready var timer = $Timer
@onready var GB_port_collision_5 = $GB_port_collision_5

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_GB_5.play("GB_port_close_5")
	GB_port_collision_5.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_gb_5():
	print("GB_port_5")
	if tea.topping == 'GB':
		ap_GB_5.play("GB_port_open_5")
		print("GB open_5")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		GB_port_collision_5.set_deferred('disabled', true)
		$GB_port_collision_5.disabled = true
	else:
		$GB_port_collision_5.disabled = false
		GB_port_collision_5.set_deferred('disabled', false)
		
