extends Node2D


@onready var main = get_node('/root/main')
@export var tile_actions: Node2D



func _ready() -> void:
	move_to(get_parent())


func _process(_delta):
	if Input.is_action_just_pressed('activate'):
		get_parent().activate()
	
	var next_pos_delta = Vector2.ZERO

	if Input.is_action_just_pressed('up'):
		next_pos_delta += Vector2.UP
	if Input.is_action_just_pressed('left'):
		next_pos_delta += Vector2.LEFT
	if Input.is_action_just_pressed('down'):
		next_pos_delta += Vector2.DOWN
	if Input.is_action_just_pressed('right'):
		next_pos_delta += Vector2.RIGHT

	if next_pos_delta != Vector2.ZERO:
		var new_tile = get_parent().get_tile_at_relative(next_pos_delta)
		if new_tile != null:
			move_to(new_tile)

func move_to(tile):
	tile_actions.clear()
	reparent(tile)
	position = Vector2.ZERO
	get_parent().add_actions()

