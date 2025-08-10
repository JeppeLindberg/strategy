extends Node2D

@export var tile_actions_ui: Control

@export var action_prefab: PackedScene


func clear():
	for child in tile_actions_ui.get_node('container').get_children():
		child.queue_free()

func add_action(action_text):
	var new_action = action_prefab.instantiate()
	tile_actions_ui.get_node('container').add_child(new_action)
	new_action.position = Vector2.ZERO
	new_action.text_label.text = action_text
