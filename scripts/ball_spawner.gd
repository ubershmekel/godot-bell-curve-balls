extends Node2D

var ball = preload("res://scenes/ball_2.tscn")
var timer = 0.0
var maxBalls = 300
var ballCount = 0

func _ready():
	randomize()

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	timer += delta
	
	if timer > 0.03 && ballCount < maxBalls:
		timer = 0
		ballCount += 1
		var random_offset_x = randf_range(-20, 20) # Adjust the range as needed
		#spawn(to_local(position))
		spawn(to_local(Vector2(position.x + random_offset_x, position.y + random_offset_x)))


	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#spawn(to_local(get_global_mouse_position()))


func spawn(pos):
	var instance = ball.instantiate()
	instance.position = pos
	add_child(instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
