extends StaticBody2D
@onready var ap_lychee = $ap_lychee
@onready var timer = $Timer
@onready var lychee_port_collision = $lychee_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_lychee.play("lychee_port_closed")
	lychee_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_lychee():
	print("lychee_port")
	if tea.teac == 'lychee':
		ap_lychee.play("lychee_port_open")
		print("lychee open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		lychee_port_collision.set_deferred('disabled', true)
		$lychee_port_collision.disabled = true
	else:
		$lychee_port_collision.disabled = false
		lychee_port_collision.set_deferred('disabled', false)
		
