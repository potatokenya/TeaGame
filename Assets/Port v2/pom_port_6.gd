extends StaticBody2D
@onready var ap_pom_6 = $ap_pom_6
@onready var timer = $Timer
@onready var pom_port_collision_6 = $pom_port_collision_6

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom_6.play("pom_port_close_6")
	pom_port_collision_6.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_6():
	print("pom_port_6")
	if tea.teac == 'pom_6':
		ap_pom_6.play("pom_port_open_6")
		print("pom open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision_6.set_deferred('disabled', true)
		$pom_port_collision_6.disabled = true
	else:
		$pom_port_collision_6.disabled = false
		pom_port_collision_6.set_deferred('disabled', false)
		
