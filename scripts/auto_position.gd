extends Node2D


@export var pct_vector = Vector2(1.0, 1.0)


func _process(_delta: float) -> void:
	var visible_rect:Rect2 = get_viewport().get_visible_rect()
	get_parent().global_position = visible_rect.position + visible_rect.size * pct_vector


