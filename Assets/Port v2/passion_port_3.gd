extends StaticBody2D

@onready var ap_passion_3 = $ap_passion_3
@onready var timer = $Timer
@onready var passion_port_collision_3 = $passion_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_passion_3.play("passion_port_close_3")
	passion_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_passion_3():
	print("passion_port_3")
	if tea.teac == 'passion_3':
		ap_passion_3.play("passion_port_open_3")
		print("passion open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		passion_port_collision_3.set_deferred('disabled', true)
		$passion_port_collision_3.disabled = true
	else:
		$passion_port_collision_3.disabled = false
		passion_port_collision_3.set_deferred('disabled', false)
		
