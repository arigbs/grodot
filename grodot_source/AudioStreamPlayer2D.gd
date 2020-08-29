extends AudioStreamPlayer2D
onready var audioplayer := $AudioStreamPlayer

var keys_pressed = {}

func _input(event):
	if (event is InputEventKey):
		if (event.pressed == true):
			keys_pressed[event.scancode] = true;
			yield(get_tree().create_timer(0.2), "timeout")
			play()
			
