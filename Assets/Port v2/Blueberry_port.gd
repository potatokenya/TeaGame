extends StaticBody2D
@onready var blue_port_animaitonplayer = $blue_port_animationplayer
@onready var timer = $Timer
@onready var blue_port_collision = $blue_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	blue_port_animaitonplayer.play("Blue_port_close")
	blue_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate():
	print("blue_port")
	if tea.teac == 'blue':
		blue_port_animaitonplayer.play("Blue_port_open")
		print("anim")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		blue_port_collision.set_deferred('disabled', true)
		$blue_port_collision.disabled = true
	else:
		$blue_port_collision.disabled = false
		blue_port_collision.set_deferred('disabled', false)
		#body.position -= bo
