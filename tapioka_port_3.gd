extends StaticBody2D
@onready var ap_tapioka = $ap_tapioka_3
@onready var timer = $Timer
@onready var tapioka_port_collision = $tapioka_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_tapioka.play("tapioka_close_3")
	tapioka_port_collision.set_deferred('disabled', false)


func _on_player_v_2_entered_gate_tapioka_3():
	print("tapioka_port_3")
	if tea.topping == 'tapioka':
		ap_tapioka.play("tapioka_open_3")
		print("tapioka open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		tapioka_port_collision.set_deferred('disabled', true)
		$tapioka_port_collision_3.disabled = true
	else:
		$tapioka_port_collision_3.disabled = false
		tapioka_port_collision.set_deferred('disabled', false)
