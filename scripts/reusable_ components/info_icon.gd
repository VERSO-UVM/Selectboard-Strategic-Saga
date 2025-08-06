extends Control
@onready var info_icon: Control = $"."

@export var description = "Hello"

			
func _set_description(desc) -> void:
	description = desc

func _on_margin_container_mouse_entered() -> void:
	var description_scene = load("res://scenes/user_interface/info_description.tscn").instantiate()
	description_scene.mouse_filter = Control.MOUSE_FILTER_IGNORE
	description_scene.position = info_icon.get_child(0).position + Vector2(50, 0)
	description_scene.size = Vector2(300, 100) 
	info_icon.add_child(description_scene)
	info_icon.get_child(1)._set_description(description)
	pass # Replace with function body.


func _on_margin_container_mouse_exited() -> void:
	# TODO: probably a cleaner way to do this...
	for child in info_icon.get_children():
		if child != info_icon.get_child(0):
			child.queue_free()
	pass # Replace with function body.
