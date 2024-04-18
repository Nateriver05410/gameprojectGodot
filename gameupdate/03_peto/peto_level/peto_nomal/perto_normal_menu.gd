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


func _on_humvee_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_nomal/peto_normal_humvee.tscn")
	pass # Replace with function body.


func _on_moto_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_nomal/peto_normal_moto.tscn")
	pass # Replace with function body.


func _on_tank_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_nomal/peto_normal_tank.tscn")
	pass # Replace with function body.


func _on_ufo_pressed():
	get_tree().change_scene_to_file("res://03_peto/peto_level/peto_nomal/peto_normal_ufo.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/Menupetr.tscn")
	pass # Replace with function body.
