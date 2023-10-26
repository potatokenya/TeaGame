extends StaticBody2D
@onready var ap_strawberry = $ap_strawberry
@onready var timer = $Timer
@onready var strawberry_port_collision = $strawberry_port_collision

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func close_port():
	ap_strawberry.play("strawberry_port_close")
	strawberry_port_collision.set_deferred('disabled', false)



func _on_player_v_2_entered_gate_strawberry():
	print("strawberry_port")
	if tea.teac == 'strawberry':
		ap_strawberry.play("strawberry_port_open")
		print("strawberry open")
		timer.start()
		timer.autostart = false
		timer.one_shot = true
		strawberry_port_collision.set_deferred('disabled', true)
		$strawberry_port_collision.disabled = true
	else:
		$strawberry_port_collision.disabled = false
		strawberry_port_collision.set_deferred('disabled', false)
		
