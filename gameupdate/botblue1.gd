extends CharacterBody2D

var speed = 100
var movement = Vector2()
var moving_left = true

const Gra = 32
const UP =Vector2.UP

@onready var I_ray = $I_ray
@onready var ani_sprite = $AnimatedSprite2D



func _physics_process(delta):
	
	if I_ray.is_colliding():
		moving_left =! moving_left
		I_ray.scale.x = -I_ray.scale.x
		ani_sprite.scale.x = -ani_sprite.scale.x
	move()
	
func move():
	movement.y += Gra
	 
	movement.x = -speed if moving_left else speed
	
	set_velocity(movement)
	set_up_direction(UP)
	move_and_slide()
	movement = velocity
	



func _on_hitbox_l_body_entered(body):
	if body is CharacterBody3D: 
		queue_free()
