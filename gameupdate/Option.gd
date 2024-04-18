extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const MUSIC_BUS = "Music"
const SFX_BUS = "SFX"
# Called when the node enters the scene tree for the first time.
func _ready():
	$bgsound.play()
	$sfx.play()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_master_value_changed(value):
	if value == -45:
		AudioServer.set_bus_mute(0,true)
	else:
		AudioServer.set_bus_mute(0,false)
		AudioServer.set_bus_volume_db(0,value)


func _on_back_pressed():
	get_tree().change_scene_to_file("res://title_screen/TitleScreen.tscn")
	pass # Replace with function body.


func _on_Music_value_changed(value):
	var BusInt = AudioServer.get_bus_index(MUSIC_BUS)
	AudioServer.set_bus_volume_db(BusInt, value)
	pass # Replace with function body.


func _on_SFX_value_changed(value):
	var BusInt = AudioServer.get_bus_index(SFX_BUS)
	AudioServer.set_bus_volume_db(BusInt, value)
	pass # Replace with function body.
