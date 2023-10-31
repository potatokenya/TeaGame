extends StaticBody2D
@onready var ap_pom_2 = $ap_pom_2
@onready var timer = $Timer
@onready var pom_port_collision_2 = $pom_port_collision_2

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom_2.play("pom_port_close")
	pom_port_collision_2.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_2():
	print("pom_port_2")
	if tea.topping == 'pom':
		ap_pom_2.play("pom_port_open_2")
		print("pom open_2")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision_2.set_deferred('disabled', true)
		$pom_port_collision_2.disabled = true
	else:
		$pom_port_collision_2.disabled = false
		pom_port_collision_2.set_deferred('disabled', false)
		
