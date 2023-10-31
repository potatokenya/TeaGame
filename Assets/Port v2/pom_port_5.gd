extends StaticBody2D
@onready var ap_pom_5 = $ap_pom_5
@onready var timer = $Timer
@onready var pom_port_collision_5 = $pom_port_collision_5

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom_5.play("pom_port_close_5")
	pom_port_collision_5.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom_5():
	print("pom_port_5")
	if tea.topping == 'pom':
		ap_pom_5.play("pom_port_open_5")
		print("pom open_5")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision_5.set_deferred('disabled', true)
		$pom_port_collision_5.disabled = true
	else:
		$pom_port_collision_5.disabled = false
		pom_port_collision_5.set_deferred('disabled', false)
		
