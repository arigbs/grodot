extends AnimatedSprite

onready var grodotAnimator := $Grodot/AnimatedSprite
onready var audioplayer := $AudioStreamPlayer2D

var frameIndex
var keys_pressed = {}

func _ready():
	frame = 0
	
func _input(event):
	if (event is InputEventKey):
		if (event.pressed == true):
			keys_pressed[event.scancode] = true;
			frame = 1
			yield(get_tree().create_timer(0.2), "timeout")
			frame = 0
