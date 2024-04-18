extends Control
var current_scene = null
@onready var audio_settings = $SettingsMenu/MainMenu2/SettingsContainer/AudioSettings
func _ready():
	$bgsound.play()
	#for button in $Menu/CenterRow/Buttons.get_children():
	#	button.conect("pressed", self, "_on_NewGameButton_pressed", [button.scene_to_load])
	 
#func _on_Button_pressed(scene_to_load):
#	get_tree().change_scene(scene_to_load)
	pass
	
func _on_Play_pressed():
	get_tree().change_scene_to_file("res://title_screen/Level.tscn")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().change_scene_to_file("res://Howtoplay.tscn")
	pass # Replace with function body 

func _on_Option_pressed():
	get_tree().change_scene_to_file("res://Option.tscn")
	pass # Replace with function body.
