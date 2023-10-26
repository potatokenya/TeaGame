extends StaticBody2D
@onready var ap_pom = $ap_pom
@onready var timer = $Timer
@onready var pom_port_collision = $pom_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_pom.play("pom_port_close")
	pom_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_pom():
	print("pom_port")
	if tea.teac == 'pom':
		ap_pom.play("pom_port_open")
		print("pom open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		pom_port_collision.set_deferred('disabled', true)
		$pom_port_collision.disabled = true
	else:
		$pom_port_collision.disabled = false
		pom_port_collision.set_deferred('disabled', false)
		
