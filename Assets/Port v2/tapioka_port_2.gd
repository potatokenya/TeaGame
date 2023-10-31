extends StaticBody2D
@onready var ap_tapioka_2 = $ap_tapioka_2
@onready var timer = $Timer
@onready var tapioka_port_collision_2 = $tapioka_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_tapioka_2.play("tapioka_port_closed_2")
	tapioka_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_tapioka_2():
	print("tapioka_port_2")
	if tea.topping == 'tapioka':
		ap_tapioka_2.play("tapioka_port_open_2")
		print("tapioka open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		tapioka_port_collision_2.set_deferred('disabled', true)
		$tapioka_port_collision_2.disabled = true
	else:
		$tapioka_port_collision_2.disabled = false
		tapioka_port_collision_2.set_deferred('disabled', false)
