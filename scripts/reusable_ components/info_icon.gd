extends Control
@onready var info_icon: Control = $"."

@export var description = "This value is a way to quantify the overall change/improvement to the town of the completion of this quest."

var enter_on_popup = false

			
func _set_description(desc) -> void:
	description = desc

func _on_margin_container_mouse_entered() -> void:
	if not enter_on_popup:
		var description_scene = load("res://scenes/user_interface/info_description.tscn").instantiate()
		description_scene.mouse_filter = Control.MOUSE_FILTER_IGNORE
		description_scene.position = info_icon.get_child(0).get_child(0).position + Vector2(50, 0)
		info_icon.get_child(0).add_child(description_scene)
		info_icon.get_child(0).get_child(1)._set_description(description)
		print('entered')
		enter_on_popup = true
		EventBus.stop_background_scroll.emit()
		print("emitting stop")
	pass # Replace with function body.



func _on_exit_bounds_mouse_exited() -> void:
	if enter_on_popup:
		EventBus.start_background_scroll.emit()
		print("emitting start")
		# TODO: probably a cleaner way to do this...
		for child in info_icon.get_child(0).get_children():
			if child != info_icon.get_child(0).get_child(0):
				child.queue_free()
		print("exit")
		enter_on_popup = false
	pass # Replace with function body.
