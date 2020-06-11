extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	
func _process(delta):
	var y = position.y
	var mouse_position = get_viewport().get_mouse_position().x
	set_position(Vector2(mouse_position, y))
