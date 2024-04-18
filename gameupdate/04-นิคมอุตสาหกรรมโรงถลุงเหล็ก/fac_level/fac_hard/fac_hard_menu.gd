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
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_hard/fac_hard_humvee.tscn")
	pass # Replace with function body.


func _on_moto_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_hard/fac_hard_moto.tscn")
	pass # Replace with function body.


func _on_tank_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_hard/fac_hard_tank.tscn")
	pass # Replace with function body.


func _on_ufo_pressed():
	get_tree().change_scene_to_file("res://04-นิคมอุตสาหกรรมโรงถลุงเหล็ก/fac_level/fac_hard/fac_hard_ufo.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Menufac.tscn")
	pass # Replace with function body.
