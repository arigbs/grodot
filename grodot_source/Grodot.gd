extends Sprite

var defaultPostion
var displacedRight_position 

func _ready():
	defaultPostion = position
	displacedRight_position = Vector2(1200, defaultPostion.y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		position = displacedRight_position
		
	elif Input.is_key_pressed(KEY_LEFT):
		visible = true
		position = defaultPostion
		
