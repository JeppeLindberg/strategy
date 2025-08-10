extends Node2D

@export var upgrade_prefab: PackedScene
@export var upgrades_ui: Control
@export var buildings: Node2D


var is_upgrading = false


func begin_upgrade():
	if is_upgrading:
		return

	is_upgrading = true
	var new_upgrade = upgrade_prefab.instantiate()
	upgrades_ui.add_child(new_upgrade)
	new_upgrade.connect('on_activate', Callable(self, '_on_activate_rat_den'))


func _on_activate_rat_den():
	for upgrade_ui in upgrades_ui.get_children():
		upgrade_ui.queue_free()
	buildings.add_rat_den()

