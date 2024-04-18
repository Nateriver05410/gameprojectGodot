extends CharacterBody2D
@onready var bulleth = preload("res://bullet/bullethumvee2.tscn")
var b 
var gravity :=0
var direction := Vector2.ZERO
var Delay = 2
var DelayA = 0.1
var Areat


func _ready():
	#if $Lbar/LifeBar.value >0:
	$Sprite2D.play('idle')
	$bgsound.play()
func _physics_process(delta):
	move()
	shoothum($Sprite2D.flip_h)
	set_velocity(direction)
	set_up_direction(Vector2.UP)
	move_and_slide()
	direction = velocity
	$Lbar/Label.text = str($Lbar/LifeBar.value)
func shoothum(dir):
	if Input.is_action_just_pressed("ui_accept"):
		$Sprite2D.play('shoot')
		b = bulleth.instantiate()
		b.init(dir)
		get_parent().add_child(b)
		b.global_position = $Marker2D.global_position
		
func move():
	if not is_on_floor():
		gravity +=20
	if Input.is_action_pressed("ui_right"):
		direction.x = 500
		$Marker2D.position.x = 122
		$Sprite2D.flip_h = false
		$Sprite2D.play('moving')
		
	elif Input.is_action_just_pressed("ui_accept"):
		
		$shoot.play()	

	elif Input.is_action_pressed("ui_left"):
		direction.x = -500
		$Marker2D.position.x = -122
		$Sprite2D.flip_h = true
		$Sprite2D.play('moving')
	elif $Sprite2D.position.y < -1000:
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")	
	#if $Timer.is_stopped():
		#	$Timer.wait_time = Delay
		#	$Timer.start()	
	else:
		
		direction.x = 0
		#if not $Timer.is_stopped():
		#	$Timer.stop()
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		$soundtest.play()
		$Sprite2D.play('moving')
		
		gravity = -1000 * 1.03
	
	direction.y = gravity
	
func hited():
	print("test")
	$Timer.wait_time = DelayA
	$Timer.start()
	$Sprite2D.modulate = Color(255, 65, 65)
	$Lbar/LifeBar.value -= 20
	if $Lbar/LifeBar.value <= 0:
		$Timer.wait_time = Delay
		$Timer.start()
		$Lbar/LifeBar.visible = false
		$finish_sound.play()
		$Sprite2D.modulate = Color(1, 1, 1)
		$Sprite2D.play('broke')
		
		

func _on_Area2D_area_entered(area):
	Areat = area.name
	print(area.name)
	if area.name == "vision":
		$Bot_sound.play()
	elif area.name == "bomb5555":
		$bombsound.play()
	elif area.name == "collision":
		$bombsound.play()
	elif area.name == "checkareaenemy":
		$bombsound.play()
	elif area.name == "bulletenemy":
		$bombsound.play()
		
	
	#elif area.name == "finish_line":
		#print("ffffff")
	pass # Replace with function body.

func _on_Timer_timeout():
	$Sprite2D.modulate = Color(1, 1, 1)
	if $Lbar/LifeBar.value <= 0:
		print("Timeeeeeee")
		queue_free()
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")
	pass # Replace with function body.


func _on_Sprite_animation_finished():
	pass # Replace with function body.
