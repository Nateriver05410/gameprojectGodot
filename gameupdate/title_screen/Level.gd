extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$bgsound.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_farm_pressed():
	get_tree().change_scene_to_file("res://Menufarm.tscn")
	pass # Replace with function body.


func _on_petroleum_pressed():
	get_tree().change_scene_to_file("res://title_screen/Menupetr.tscn")
	pass # Replace with function body.


func _on_factory_pressed():
	get_tree().change_scene_to_file("res://Menufac.tscn")
	pass # Replace with function body.


func _on_Dam_pressed():
	get_tree().change_scene_to_file("res://title_screen/MenuDm.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/TitleScreen.tscn")
	pass # Replace with function body.
