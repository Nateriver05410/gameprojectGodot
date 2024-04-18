extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	Globals.enemy_killed = 0 
	print(Globals.enemy_killed)
	
func _process(delta):
	$Score/Label.text = "Defeat enemy : "+str($"/root/Globals".enemy_killed)+"/5"
	
	if Globals.enemy_killed == 5:
		$finish_line.visible = true
	elif $cha.position.y > 1500:
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")
	else:
		$finish_line.visible = false
	pass
