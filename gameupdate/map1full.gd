extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Boss/Boss.play("standing")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$CanvasLayer4/score.text = "SCORE : "+str($Node2D.score)
	$Car/ProgressBar.value = $Car.heal
	$Boss/ProgressBar.value = $Boss.heal
	
	
	
	
	pass
