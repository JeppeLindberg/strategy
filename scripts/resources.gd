extends Node2D


var tears = 0
var fervor = 0

@onready var main = get_node('/root/main')
@export var upgrades: Node2D
@export var resources_ui: Control
@export var resource_prefab: PackedScene


var fervor_ui
var tears_ui


func _ready() -> void:
	var new_fervor_ui = resource_prefab.instantiate()
	resources_ui.get_node('container').add_child(new_fervor_ui)
	fervor_ui = new_fervor_ui
	fervor_ui.connect('on_activate', Callable(self, '_on_activate_fervor'))
	
	var new_tears_ui = resource_prefab.instantiate()
	resources_ui.get_node('container').add_child(new_tears_ui)
	tears_ui = new_tears_ui

func _process(_delta: float) -> void:
	fervor_ui.text_label.text = str(fervor) + '/10'
	tears_ui.text_label.text = str(tears)

func _on_activate_fervor():
	if fervor >= 10:
		upgrades.begin_upgrade()
