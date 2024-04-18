extends CharacterBody2D
@onready var bulleth = preload("res://bullet/bullethumvee2.tscn")
var b 


var gravity := 0
var direction := Vector2.ZERO
var Delay = 1
var DelayA = 0.1
var Areat
var coutjump = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$bgsound.play()
	$Sprite2D.play('idle')
	
	pass # Replace with function body.

func _physics_process(delta):
	move()
	shoothum($Sprite2D.flip_h)
	set_velocity(direction)
	set_up_direction(Vector2.UP)
	move_and_slide()
	direction = velocity
	$Lbar/Label.text = str($Lbar/LifeBar.value)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func move():
	if not is_on_floor():
		gravity +=20
		print(coutjump)
	else:
		coutjump = 0
	if Input.is_action_pressed("ui_right"):
		direction.x = 700
		$Marker2D.position.x = 122
		$Sprite2D.flip_h = false
		$Sprite2D.play('moving')
		
	elif Input.is_action_just_pressed("ui_accept"):
		$shoot.play()	
		
	elif Input.is_action_pressed("ui_left"):
		direction.x = -700
		$Marker2D.position.x = -122
		$Sprite2D.flip_h = true
		$Sprite2D.play('moving')
	 
	elif $Sprite2D.position.y < 0:
		gravity = +1000
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")
	#if $Timer.is_stopped():
		#	$Timer.wait_time = Delay
		#	$Timer.start()	
	else:
		
		direction.x = 0
		
	if Input.is_action_just_pressed("ui_up") and coutjump < 2 :
		
		print("test")
		
		$Sprite2D.play('moving')
		
		gravity = -1000
		coutjump += 1
		print(coutjump)
			
	
	direction.y = gravity
		#if not $Timer.is_stopped():
		#	$Timer.stop()

func shoothum(dir):
	if Input.is_action_just_pressed("ui_accept"):
		$Sprite2D.play('shoot')
		b = bulleth.instantiate()
		b.init(dir)
		get_parent().add_child(b)
		b.global_position = $Marker2D.global_position
		
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

	
	#elif area.name == "finish_line":
		#print("ffffff")
	pass	

func _on_Timer_timeout():
	$Sprite2D.modulate = Color(1, 1, 1)
	if $Lbar/LifeBar.value <= 0:	
		queue_free()
		get_tree().change_scene_to_file("res://title_screen/lost.tscn")
	pass # Replace with function b


func _on_cha_area_entered(area):
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
		
	pass # Replace with function body.
