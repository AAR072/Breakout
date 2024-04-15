extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	## set random color of brick
	var rng;
	var c: Color;
	rng = RandomNumberGenerator.new()
	c.r = rng.randf_range(0,1)
	c.g = rng.randf_range(0,1)
	c.b = rng.randf_range(0,1)
	set_color(c)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
