extends Node2D


@onready var world = get_node('/root/main/world')
@export var buildings: Node2D



func activate():
	for building in buildings.get_children():
		if building.is_in_group('activateable'):
			building.activate()
	
func get_tile_at_relative(delta):
	var coordinate = get_coordinate_pos() + delta
	return world.get_tile_at(coordinate)

func get_coordinate_pos():
	return global_position / world.tile_size

func add_actions():
	for building in buildings.get_children():
		if building.is_in_group('activateable'):
			building.add_action()


