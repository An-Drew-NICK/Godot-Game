extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0



func _ready():
	pass

func _process(delta):
	
	var velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity.y -= SPEED

	if Input.is_action_pressed("ui_down"):
		velocity.y += SPEED

	if Input.is_action_pressed("ui_right"):
		velocity.y += SPEED

	if Input.is_action_pressed("ui_left"):
		velocity.y -= SPEED

	move_and_slide(velocity)
