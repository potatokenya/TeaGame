extends StaticBody2D

@onready var ap_passion_4 = $ap_passion_4
@onready var timer = $Timer
@onready var passion_port_collision_4 = $passion_port_collision_4

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_passion_4.play("passion_port_close_4")
	passion_port_collision_4.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_passion_4():
	print("passion_port_4")
	if tea.teac == 'passion_4':
		ap_passion_4.play("passion_port_open_4")
		print("passion open_4")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		passion_port_collision_4.set_deferred('disabled', true)
		$passion_port_collision_4.disabled = true
	else:
		$passion_port_collision_4.disabled = false
		passion_port_collision_4.set_deferred('disabled', false)
		
