extends Control

@onready var back_button: Button = $MarginContainer/Button
@onready var next_button: Button = $MarginContainer/Button2

signal page_change

var pages = 4
var cur_page = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Check edge cases of buttons (disable if first/last page)
	if cur_page == 0:
		back_button.disabled = true
		next_button.disabled = false
	elif cur_page == pages - 1:
		back_button.disabled = false
		next_button.disabled = true
	else:
		back_button.disabled = false
		next_button.disabled = false
	


func _on_back_button_pressed() -> void:
	cur_page = cur_page - 1
	page_change.emit()
	print("back")
	pass # Replace with function body.


func _on_next_button_pressed() -> void:
	cur_page = cur_page + 1
	page_change.emit()
	print("next")
	pass # Replace with function body.
