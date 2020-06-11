extends RigidBody2D

const GROUP_NAME = "Bricks"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group(GROUP_NAME):
			print('Die ' + body.name)
			body.queue_free()
