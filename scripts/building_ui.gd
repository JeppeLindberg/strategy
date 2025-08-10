extends Button


@export var text_label: Label

signal on_activate()



func _ready():
	add_to_group('activateable')

func activate():
	emit_signal('on_activate')



func _on_pressed() -> void:
	activate()





