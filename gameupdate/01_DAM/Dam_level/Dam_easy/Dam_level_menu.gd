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


func _on_btn_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_easy/Dam_easy_humvee.tscn")
	pass # Replace with function body.


func _on_btn2_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_easy/Dam_easy_moto.tscn")
	pass # Replace with function body.


func _on_btn3_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_easy/Dam_easy_tank.tscn")
	pass # Replace with function body.


func _on_btn4_pressed():
	get_tree().change_scene_to_file("res://01_DAM/Dam_level/Dam_easy/Dam_easy_ufo01.tscn")
	#get_tree().change_scene("res://01_DAM/Dam_level/Dam_easy/Dam_easy_uf.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/MenuDm.tscn")
	pass # Replace with function body.
