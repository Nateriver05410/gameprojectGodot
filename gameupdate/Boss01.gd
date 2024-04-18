extends CharacterBody2D
var heal = 100

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Boss.play("standing")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	BossDead()
	$Boss.play("standing")
	pass


func _on_boss01_area_entered(area):
	print(area.name)
	if area.name == "shootmoto":
		$Boss.play ("damaged")
		heal = heal -10
	else :
		$Boss.play ("standing")	
		
	#area.get_parent().queue_free()
	#queue_free()
	pass # Replace with function body.
func BossDead():
	if heal <= 0:
		$Boss.play("broke")
	
	pass
	


func _on_Boss_animation_finished():
	
	pass # Replace with function body.
