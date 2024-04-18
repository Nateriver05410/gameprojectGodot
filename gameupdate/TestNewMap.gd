extends Node2D

#onready var en = preload("res://bullet/enemy.tscn")
var e

#func resp_enemy(pos):
	#e = en.instance()
	#e.position = pos
	#yield(get_tree().create_timer(1,0) ,"timeout")
	#resp()
func _ready():
	Globals.enemy_killed = 0
	print(Globals.enemy_killed) 
func _process(delta):
	$Score/Label.text = "Defeat enemy : "+str($"/root/Globals".enemy_killed)+"/3"
	
	if Globals.enemy_killed == 3:
		$finish_line.visible = true
	elif $cha.position.y  > 1500:
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")
	else:
		$finish_line.visible = false
	pass
func resp():
	add_child(e)
	
