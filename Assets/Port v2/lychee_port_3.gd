extends StaticBody2D
@onready var ap_lychee_3 = $ap_lychee_3
@onready var timer = $Timer
@onready var lychee_port_collision_3 = $lychee_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_lychee_3.play("lychee_port_close_3")
	lychee_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_lychee_3():
	print("lychee_port_3")
	if tea.teac == 'lychee':
		ap_lychee_3.play("lychee_port_open_3")
		print("lychee open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		lychee_port_collision_3.set_deferred('disabled', true)
		$lychee_port_collision_3.disabled = true
	else:
		$lychee_port_collision_3.disabled = false
		lychee_port_collision_3.set_deferred('disabled', false)
		
