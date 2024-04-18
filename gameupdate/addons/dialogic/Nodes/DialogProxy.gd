extends Control


## The timeline to load when starting the scene
@export var timeline: String # (String, "TimelineDropdown")
@export var add_canvas: bool = true
@export var reset_saves: bool = true
@export var debug_mode: bool = false

func _ready():
	var d = Dialogic.start(Callable(timeline, '').bind("res://addons/dialogic/Nodes/DialogNode.tscn"), debug_mode, add_canvas)
	get_parent().call_deferred('add_child', d)
	queue_free()
