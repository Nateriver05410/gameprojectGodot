extends CharacterBody2D

var veclocity = Vector2(1,0)
var speed = 10

func _physics_process(delta):
	var collision_info = move_and_collide(veclocity.normalized() * delta * speed) 
	
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_shootmoto_area_entered(area):
	print(area.name)
	if area.name == "Hurtbox" or "TileMap1" or "carnao":
		queue_free()
	else:
		queue_free()
	pass # Replace with function body.
