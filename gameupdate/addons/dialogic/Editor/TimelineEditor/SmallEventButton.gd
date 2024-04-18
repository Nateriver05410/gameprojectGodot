@tool
extends Button

@export var visible_name: String = ""
@export (String) var event_id = 'dialogic_099'
@export (Color) var event_color = Color('#48a2a2a2')
@export var event_icon: Texture2D = null: set = set_icon


func _ready():
	$Panel.self_modulate = event_color
	self_modulate = Color(1,1,1)
	if visible_name != '':
		text = '  ' + visible_name
	tooltip_text = DTS.translate(tooltip_text)
	var _scale = get_constant("inspector_margin", "Editor")
	_scale = _scale * 0.125
	custom_minimum_size = Vector2(30,30)
	custom_minimum_size = custom_minimum_size * _scale


func set_icon(texture):
	icon = texture
	event_icon = texture


func _get_drag_data(position):
	var preview_label = Label.new()
	
	if (self.text != ''):
		preview_label.text = text
	else:
		preview_label.text = 'Add Event %s' % [ tooltip_text ]
		
	set_drag_preview(preview_label)
	
	return { "source": "EventButton", "event_id": event_id }
