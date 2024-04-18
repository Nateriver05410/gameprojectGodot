extends Node2D

var player
var attack = false

func _ready():
	$AnimationPlayer.play("fly")
	pass
func _physics_process(delta):
	if attack :
		if position.x > player.position.x:
			$AnimatedSprite2D.flip_h = false
			$AnimatedSprite2D.play('moving')
		else:
			$AnimatedSprite2D.flip_h = true
			$AnimatedSprite2D.play('moving')
		$AnimationPlayer.stop()
		position =  lerp(position, player.position, 0.8 * delta)


func _on_collision_body_entered(body):
	print(body.name)
	if body.name == 'cha':
		$"/root/Globals".enemy_killed += 1
		body.hited()
		queue_free()


func _on_collision_area_entered(area):
	print(area.name)
	if area.name  == 'bullethum2':
		$"/root/Globals".enemy_killed += 1
		area.get_parent().destroy()
		queue_free()

func _on_vision_body_entered(body):
	if body.name == 'cha':
		player = body
		attack = true
		
