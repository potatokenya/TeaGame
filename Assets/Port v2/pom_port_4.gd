extends StaticBody2D
@onready var ap_pom_4 = $ap_pom_4
@onready var timer = $Timer
@onready var pom_port_collision_4 = $pom_port_collision_4

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom_4.play("pom_port_close_4")
	pom_port_collision_4.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_4():
	print("pom_port_4")
	if tea.teac == 'pom_4':
		ap_pom_4.play("pom_port_open_4")
		print("pom open_4")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision_4.set_deferred('disabled', true)
		$pom_port_collision_4.disabled = true
	else:
		$pom_port_collision_4.disabled = false
		pom_port_collision_4.set_deferred('disabled', false)
		
