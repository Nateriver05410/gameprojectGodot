extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dalta = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	#$scene.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Win_pressed():
	get_tree().change_scene_to_file("res://title_screen/Level.tscn")
	$scene.play()
	pass # Replace with function body.


func _on_scene_finished():
	$scene.play()
	pass # Replace with function body.
