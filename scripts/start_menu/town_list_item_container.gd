extends HBoxContainer
# TODO: dynamically introduce towns/their data

signal town_selected

@onready var town_name: RichTextLabel = $Button/HBoxContainer/town_name
@onready var population: RichTextLabel = $Button/HBoxContainer/VBoxContainer/RichTextLabel

func _ready() -> void:
	town_name.text = ""

func _set_text(name) -> void:
	town_name.text = name
	#print("change text name to: " + name)
	
func _set_pop(num_people) -> void:
	population.text = str(num_people)
	

func _on_button_pressed() -> void:
	# TODO: Should eventualy have IDs rather than name passed along
	EventBus.set_town_selection.emit(town_name.text)
