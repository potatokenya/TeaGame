extends StaticBody2D

@onready var ap_GB = $ap_GB
@onready var timer = $Timer
@onready var GB_port_collision = $GB_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_GB.play("GB_port_close")
	GB_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_gb():
	print("GB_port")
	if tea.topping == 'GB':
		ap_GB.play("GB_port_open")
		print("GB open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		GB_port_collision.set_deferred('disabled', true)
		$GB_port_collision.disabled = true
	else:
		$GB_port_collision.disabled = false
		GB_port_collision.set_deferred('disabled', false)
		
