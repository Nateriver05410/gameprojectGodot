extends Node2D
@onready var bulleth = preload("res://bullet/bullethumvee.tscn")
var b 

var w_time = 3
var shoot_distance = 1000
var damage = 20



func _ready():
	pass
	
func _physics_process(delta):
	if $RayCast2D.is_colliding():
		$Sprite2D.flip_h = false
		if $LifeBar.value > 0:
			$Sprite2D.play('attack')	
		$Marker2D.position.x = -150
		if $Timer.is_stopped():
			$Timer.wait_time = w_time
			$Timer.start()
	elif $RayCast2D2.is_colliding():
		$Sprite2D.flip_h = true
		if $LifeBar.value > 0:
			$Sprite2D.play('attack')
		$Marker2D.position.x = 150
		if $Timer.is_stopped():
			$Timer.wait_time = w_time
			$Timer.start()
	else:
		if not $Timer.is_stopped():
			$Timer.stop()
		
#
#
func _on_checkareaenemy_area_entered(area):
	print(area.name)
	if 'bullethum' in area.name :
		hited(area)
		
func hited(a):
	a.get_parent().queue_free()
	$LifeBar.value -= damage
	$Sprite2D.play('damaged')
	if $LifeBar.value <= 0:
		$LifeBar.visible =false
		$Sprite2D.play('broke')
		#get_parent().resp_enemy(position)
			

func shoothum(dir):
	b = bulleth.instantiate()
	b.init(dir , shoot_distance)
	get_parent().add_child(b)
	b.global_position = $Marker2D.global_position
		
func _on_Timer_timeout():
	if $LifeBar.value <= 0:
		Globals.enemy_killed += 1
		$Sprite2D.play('broke')
		queue_free()
	elif $Sprite2D.flip_h :
		shoothum(false)
	else:
		shoothum(true)
	



