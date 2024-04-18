extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_easy/peto_easy_menu.tscn")
	pass # Replace with function body.
func _on_Button2_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_hard/peto_hard_menu.tscn")
	pass # Replace with function body.
func _on_Button3_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_nomal/perto_normal_menu.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/Menupetr.tscn")
	pass # Replace with function body.
