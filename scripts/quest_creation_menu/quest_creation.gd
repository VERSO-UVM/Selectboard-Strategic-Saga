class_name InfoIcon extends Control

@onready var scroll_container: ScrollContainer = $ColorRect/quest_creation_content/VBoxContainer/body_container/HBoxContainer/ScrollContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.stop_background_scroll.connect(_on_stop_scroll)
	EventBus.start_background_scroll.connect(_on_start_scroll)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
# Toggle the background scrolling when interacting with a "hint"
func _on_stop_scroll() -> void:
	scroll_container.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_disable_all_mouse_interaction(scroll_container)
	
func _on_start_scroll() -> void:
	scroll_container.mouse_filter = Control.MOUSE_FILTER_PASS
	_enable_all_mouse_interaction(scroll_container)
	
# Disable mouse interaction for all text fields so
# cursor can hover over them 
# Possibly an easier solution with z values? somehow stoping mouse interaction?
func _disable_all_mouse_interaction(node) -> void:
	if node.get_children():
		for child in node.get_children():
			_disable_all_mouse_interaction(child)
	if node is TextEdit or node is SpinBox:
		node.mouse_filter = Control.MOUSE_FILTER_IGNORE
		
func _enable_all_mouse_interaction(node) -> void:
	if node.get_children():
		for child in node.get_children():
			_disable_all_mouse_interaction(child)
	if node is TextEdit or node is SpinBox:
		node.mouse_filter = Control.MOUSE_FILTER_STOP
