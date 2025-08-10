extends CenterContainer


@export var text_label: RichTextLabel

signal on_activate()



func _ready():
	add_to_group('activateable')

func activate():
	emit_signal('on_activate')

func _on_button_pressed() -> void:
	activate()
