# @tool
extends Node2D

@export var tile_size = Vector2(100,100)
@export var tile_prefab: PackedScene

# @export_tool_button("Initalize", "Callable") var initialize_action = Callable(self, 'initialize')

func _ready() -> void:
	initialize()

func initialize():
	pass

func create_tile(x, y):
	var new_tile = tile_prefab.instantiate()
	add_child(new_tile)
	new_tile.global_position = Vector2(x, y) * tile_size

func get_tile_at(coordinate):
	for tile in get_children():
		if tile.global_position == coordinate * tile_size:
			return tile
	return null
