extends ScrollContainer

# TODO: Dynamically introduce new towns and their data
# TODO: Need to have IDS to distinguish towns
# TODO: Remove duplicates? Focus on choice from before or 
# TODO: store it elsewhere on the start menu?

@onready var towns_container: VBoxContainer = $towns_container

# Temporary static list of towns (will change to town objects)
var towns = ["Burlington", "Colchester", "Essex", "Middlebury", "Milton","Rutland", "Williston" ]
var populations = [50000, 20000, 12000, 10000, 11000, 16000, 11000]
var new_town
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in towns.size():
		new_town = load("res://scenes/user_interface/town_list_item_container.tscn").instantiate()
		towns_container.add_child(new_town)
		# Set text value after it has loaded into tree (not sure why this needs to be in this order?)
		towns_container.get_child(i)._set_text(towns[i])
		towns_container.get_child(i)._set_pop(populations[i])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
