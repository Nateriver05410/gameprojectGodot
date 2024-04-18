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
		position =  lerp(position, player.position, 0.5 * delta)


func _on_collision_body_entered(body):
	print(body.name)
	if body.name == 'cha':
		body.hited()
		$"/root/Globals".enemy_killed += 1
		queue_free()

func _on_collision_area_entered(area):
	print(area.name)
	if area.name  == 'bullethum2':
		area.get_parent().destroy()
		$"/root/Globals".enemy_killed += 1
		queue_free()
		
func _on_vision_body_entered(body):
	if body.name == 'cha':
		#$"/root/Globals".enemy_killed += 1
		player = body
		attack = true
		
		
