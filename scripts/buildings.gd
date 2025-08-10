extends Node2D

@export var building_ui_prefab: PackedScene
@export var buildings_ui: Control




func add_rat_den():
	var new_building_ui = building_ui_prefab.instantiate()
	buildings_ui.get_node('container').add_child(new_building_ui)

