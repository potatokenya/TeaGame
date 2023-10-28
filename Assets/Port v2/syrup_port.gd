extends StaticBody2D
@onready var ap_syrup = $ap_syrup
@onready var timer = $Timer
@onready var syrup_port_collision = $syrup_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_syrup.play("syrup_port_close")
	syrup_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_syrup():
	print("syrup_port")
	if tea.teac == 'syrup':
		ap_syrup.play("syrup_port_open")
		print("syrup open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		syrup_port_collision.set_deferred('disabled', true)
		$syrup_port_collision.disabled = true
	else:
		$syrup_port_collision.disabled = false
		syrup_port_collision.set_deferred('disabled', false)
		
