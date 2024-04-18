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
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_easy/fac_easy_moto.tscn")
	pass # Replace with function body.


func _on_humvee3_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_easy/fac_easy_ufo.tscn")
	#get_tree().change_scene()
	pass # Replace with function body.


func _on_humvee2_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_easy/fac_easy_humvee.tscn")
	pass # Replace with function body.


func _on_tank_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_easy/fac_easy_tank.tscn.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Menufac.tscn")
	pass # Replace with function body.
