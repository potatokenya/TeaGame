extends StaticBody2D


@onready var ap_passion_2 = $ap_passion_2
@onready var timer = $Timer
@onready var passion_port_collision_2 = $passion_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_passion_2.play("passion_port_close_2")
	passion_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_passion_2():
	print("passion_port_2")
	if tea.teac == 'passion_2':
		ap_passion_2.play("passion_port_open_2")
		print("passion open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		passion_port_collision_2.set_deferred('disabled', true)
		$passion_port_collision_2.disabled = true
	else:
		$passion_port_collision_2.disabled = false
		passion_port_collision_2.set_deferred('disabled', false)
		
