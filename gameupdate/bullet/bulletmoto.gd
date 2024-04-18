extends Sprite2D
var direction
var start_position = 0
var lifespan = 400

func init(d , ls = 400):
	direction = d
	lifespan = ls
	
func _ready():
	scale = Vector2(.2, .2)
func _process(delta):
	if start_position == 0:
		start_position = position.x
	if direction:
		if position.x < start_position - lifespan:
			queue_free()
		else : 
			position.x -= 6
	else:
		if position.x > start_position + lifespan:
			queue_free()
		else:
			 position.x += 6

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func destroy():
	queue_free()


#func _on_bullethum_body_entered(body):
#	if body.name == 'humvee':
#		destroy()
#		body.hited()
