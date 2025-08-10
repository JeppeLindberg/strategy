extends Node2D


var tears = 0

@onready var main = get_node('/root/main')
@export var resources_ui: Control


func _process(_delta: float) -> void:
	resources_ui.get_node('text').text = 'tears: ' + str(tears)



