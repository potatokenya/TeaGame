extends StaticBody2D
@onready var ap_bs = $ap_brownsugar
@onready var timer = $Timer
@onready var bs_port_collision = $CollisionShape2D

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_bs.play('brownsugar_port_closed')
	bs_port_collision.set_deferred('disabled', false)


func _on_player_v_2_entered_gate_syrup():
	print("brownsugar port")
	if tea.sirup == 'bs':
		ap_bs.play("brownsugar_port_open")
		print("brownsugar open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		bs_port_collision.set_deferred('disabled', true)
		$CollisionShape2D.disabled = true
	else:
		$CollisionShape2D.disabled = false
		bs_port_collision.set_deferred('disabled', false)
