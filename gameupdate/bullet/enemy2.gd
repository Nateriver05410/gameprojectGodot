extends "res://bullet/enemy.gd"

func _init():
	w_time = 2
	shoot_distance =  1000
	damage = 40
	


func _on_Area2D_area_entered(area):
	if area.name  == 'bullethum2':
		$"/root/Globals".enemy_killed += 1
		area.get_parent().destroy()
		queue_free()
	
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.name == 'cha':
		$"/root/Globals".enemy_killed += 1
		body.hited()
		queue_free()
	pass # Replace with function body.
