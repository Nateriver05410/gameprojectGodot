extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Easy_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_easy/Dam_level_menu.tscn")
	pass # Replace with function body.


func _on_Normal_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_normal/Dam_level_normal_menu.tscn")
	pass # Replace with function body.


func _on_Hard_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_hard/Dam_hard_menu.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/Level.tscn")
	pass # Replace with function body.
