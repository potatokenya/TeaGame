extends StaticBody2D
@onready var ap_tapioka = $ap_tapioka
@onready var timer = $Timer
@onready var tapioka_port_collision = $tapioka_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_tapioka.play("tapioka_port_closed")
	tapioka_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_tapioka():
	print("tapioka_port")
	if tea.teac == 'tapioka':
		ap_tapioka.play("tapioka_port_open")
		print("tapioka open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		tapioka_port_collision.set_deferred('disabled', true)
		$tapioka_port_collision.disabled = true
	else:
		$tapioka_port_collision.disabled = false
		tapioka_port_collision.set_deferred('disabled', false)
