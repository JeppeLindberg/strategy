extends Node2D

@export var building_ui_prefab: PackedScene
@export var buildings_ui: Control
@export var tile_selector: Node2D
@export var rat_den_building_prefab: PackedScene




func add_rat_den():
	var new_building_ui = building_ui_prefab.instantiate()
	buildings_ui.get_node('container').add_child(new_building_ui)
	new_building_ui.connect('on_activate', Callable(self, 'build_rat_den'))

func build_rat_den():
	var new_rat_den_building = rat_den_building_prefab.instantiate()
	var tile = tile_selector.get_parent()
	if tile.get_building() == null:
		tile.buildings.add_child(new_rat_den_building)
		tile_selector.move_to(tile)
