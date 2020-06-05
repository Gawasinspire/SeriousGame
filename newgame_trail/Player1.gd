extends KinematicBody2D

var motion = Vector2(0,0)
const SPEED = 600
const GRAVITY = 400
const UP = Vector2(0,1)
const JUMP_SPEED = 2000

func _physics_process(delta):
	apply_gravity()
	jump()
	move()
	move_and_slide(motion, UP)

func jump():
	if Input.is_action_pressed("jump"):
		motion.y = - JUMP_SPEED

func move():
	if Input.is_action_pressed("left") and not Input.is_action_just_pressed("right"):
		motion.x = - SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_just_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0

func apply_gravity():
	if is_on_floor():
		motion.y = 0
	else:
		motion.y +=  GRAVITY