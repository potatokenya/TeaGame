extends StaticBody2D

@onready var ap_passion_5 = $ap_passion_5
@onready var timer = $Timer
@onready var passion_port_collision_5 = $passion_port_collision_5

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_passion_5.play("passion_port_close_5")
	passion_port_collision_5.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_passion_5():
	print("passion_port_5")
	if tea.teac == 'passion':
		ap_passion_5.play("passion_port_open_5")
		print("passion open_5")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		passion_port_collision_5.set_deferred('disabled', true)
		$passion_port_collision_5.disabled = true
	else:
		$passion_port_collision_5.disabled = false
		passion_port_collision_5.set_deferred('disabled', false)
		
