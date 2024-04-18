extends CharacterBody2D

class_name ball

var speedML = 1.0;

var speed = 20;

func _ready():
	spawn()


func _physics_process(delta):
	var collision = move_and_collide(velocity * speed * delta)
	if (collision):
		velocity = velocity.bounce(collision.get_normal()) * speedML

func spawn():
	randomize();
	velocity.x = [0.1, 0.8][randi() % 2] * 20;
	velocity.y = -20

