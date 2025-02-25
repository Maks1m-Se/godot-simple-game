extends Node2D

var speed = 200  # Speed of player movement

func _process(delta):
	var velocity = Vector2()  # Stores movement direction

	# Keyboard input (default arrows)
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	# Normalize and move the player
	position += velocity.normalized() * speed * delta
