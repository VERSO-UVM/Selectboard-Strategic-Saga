extends Control
@onready var info_icon: Control = $"."

@export var description = "This value is a way to quantify the overall change/improvement to the town of the completion of this quest."

var enter_on_popup = false

			
func _set_description(desc) -> void:
	description = desc

func _on_margin_container_mouse_entered() -> void:
	if not enter_on_popup:
		# TODO: Store offset as a constant somewhere
		# TODO: Find better way to determine child position
		var description_scene = load("res://scenes/user_interface/info_description.tscn").instantiate()
		description_scene.mouse_filter = Control.MOUSE_FILTER_IGNORE
		description_scene.position = info_icon.get_child(0).get_child(0).position + Vector2(50, 0)
		info_icon.get_child(0).add_child(description_scene)
		info_icon.get_child(0).get_child(1)._set_description(description)
		enter_on_popup = true
		EventBus.stop_background_scroll.emit()


func _on_exit_bounds_mouse_exited() -> void:
	if enter_on_popup:
		# No longer necessary to focus scrolling on popup
		EventBus.start_background_scroll.emit()
		
		# TODO: Probably a cleaner way to do this...
		# TODO: Determine which is better, reinstantiating each time 
		# TODO: or looping through each child?
		
		# Version 1
		var temp_parent = info_icon.get_parent()
		info_icon.queue_free()
		var clean_info_icon = load("res://scenes/user_interface/info_icon.tscn").instantiate()
		clean_info_icon._set_description(description)
		temp_parent.add_child(clean_info_icon)

		# Version 2
		# Remove all nodes except for the original in the info_icon.tscn
		#for child in info_icon.get_child(0).get_children():
			#if child != info_icon.get_child(0).get_child(0):
				#child.queue_free()
				
		enter_on_popup = false
