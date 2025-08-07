extends Control
@onready var label: Label = $ColorRect/ScrollContainer/MarginContainer/Label

func _set_description(desc) -> void:
	label.text = desc
