extends Node2D

@onready var resources = get_node('/root/main/resources')
@onready var tile_actions = get_node('/root/main/tile_actions')


@export_multiline var action_text: String


func _ready() -> void:
	add_to_group('activateable')

func activate():
	resources.tears += 1
	resources.fervor += 1

func add_action():
	tile_actions.add_action(action_text)
