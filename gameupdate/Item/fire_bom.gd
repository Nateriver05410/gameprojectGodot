extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("BOM")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_bomb5555_body_entered(body):
	if body.name == 'cha':
		#$Soundbomb.play()
		body.hited()
		queue_free()
	pass # Replace with function body.
