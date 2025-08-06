extends HBoxContainer
#@onready var rich_text_label: RichTextLabel = $RichTextLabel
signal town_selected
# TODO: dynamically introduce towns/their data
@onready var town_label: RichTextLabel = $Button/HBoxContainer/RichTextLabel

func _set_text(name) -> void:
	#rich_text_label.text = name
	print("change text name to: " + name)
	


func _on_button_pressed() -> void:
	EventBus.set_town_selection.emit(town_label.text)
	pass # Replace with function body.
