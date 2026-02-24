extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_right_down: RayCast2D = $RayCastRightDown
@onready var ray_cast_left_down: RayCast2D = $RayCastLeftDown
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):

	if direction < 0:
		if ray_cast_left.is_colliding() or not ray_cast_left_down.is_colliding():
			direction = 1
			animated_sprite.flip_h = false
	elif direction > 0:
		if ray_cast_right.is_colliding() or not ray_cast_right_down.is_colliding():
			direction = -1
			animated_sprite.flip_h = true

	position.x += direction * SPEED * delta
