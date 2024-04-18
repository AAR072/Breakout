extends CharacterBody2D



# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_physical_key_pressed(KEY_A)):
		velocity.x = -400;
	elif (Input.is_physical_key_pressed(KEY_D)):
		velocity.x = 400;
	else:
		velocity.x = 0;
	move_and_collide(velocity * delta);

