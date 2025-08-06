extends Control
@onready var label: Label = $ColorRect/MarginContainer/ScrollContainer/Label

func _set_description(desc) -> void:
	label.text = desc
