extends Node2D
var brickScene = preload("res://brick.tscn")
var arrayOfBricks = [];

# This function creates grids of scenes based on parameters
func spawnObjects(scene, spacingX, breakHeight, objectCount, lineWidth, originX, originY):
	var temp;
	var fixed = 0;
	var cursorPos = Vector2(originX, originY)
	for i in range(objectCount):
		temp = brickScene.instantiate()
		# This actually spawns the object
		add_child(temp)
		# Stop offset in start
		if i != 0:
			cursorPos.x += spacingX
		# Create new line by resetting cursor x and adding to y value 
		if i % lineWidth == 0 && i != 0:
			cursorPos.x = originX;
			cursorPos.y += breakHeight ;
		# move the block
		temp.position = Vector2(cursorPos.x, cursorPos.y)
		# Adding to our array of bricks
		arrayOfBricks.push_back(temp)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	spawnObjects(brickScene, 100, 100, 10, 2, 100, 100)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
