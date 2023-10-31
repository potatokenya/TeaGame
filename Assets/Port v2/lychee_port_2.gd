extends StaticBody2D

@onready var ap_lychee_2 = $ap_lychee_2
@onready var timer = $Timer
@onready var lychee_port_collision_2 = $lychee_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_lychee_2.play("lychee_port_close")
	lychee_port_collision_2.set_deferred('disabled', false)


func _on_player_v_2_entered_gate_lychee_2():
	print("lychee_port_2")
	if tea.topping == 'lychee':
		ap_lychee_2.play("lychee_port_open_2")
		print("lychee open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		lychee_port_collision_2.set_deferred('disabled', true)
		$lychee_port_collision_2.disabled = true
	else:
		$lychee_port_collision_2.disabled = false
		lychee_port_collision_2.set_deferred('disabled', false)
