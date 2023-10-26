extends StaticBody2D

@onready var ap_passion = $ap_passion
@onready var timer = $Timer
@onready var passion_port_collision = $passion_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_passion.play("passion_port_close")
	passion_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_passion():
	print("passion_port")
	if tea.teac == 'passion':
		ap_passion.play("passion_port_open")
		print("passion open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		passion_port_collision.set_deferred('disabled', true)
		$passion_port_collision.disabled = true
	else:
		$passion_port_collision.disabled = false
		passion_port_collision.set_deferred('disabled', false)
		
