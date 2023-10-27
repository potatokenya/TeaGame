extends StaticBody2D
@onready var ap_pom_3 = $ap_pom_3
@onready var timer = $Timer
@onready var pom_port_collision_3 = $pom_port_collision_3

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom_3.play("pom_port_close_3")
	pom_port_collision_3.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_3():
	print("pom_port_3")
	if tea.teac == 'pom_3':
		ap_pom_3.play("pom_port_open_3")
		print("pom open_3")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision_3.set_deferred('disabled', true)
		$pom_port_collision_3.disabled = true
	else:
		$pom_port_collision_3.disabled = false
		pom_port_collision_3.set_deferred('disabled', false)
		
