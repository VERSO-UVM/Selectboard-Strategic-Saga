extends Control

@onready var nav_buttons: Control = $ColorRect/MarginContainer/navButtons
@onready var menu_content: MarginContainer = $ColorRect/menu_content
@onready var play_button: Control = $ColorRect/MarginContainer2/play_button

const PAGES = 3
const STARTING_PAGE = 0

# User choices
var town_selection
var budget_timeline_selection

# Scene paths
var welcome_scene = load("res://scenes/user_interface/menu_welcome_screen.tscn")
var town_selector_scene = load("res://scenes/user_interface/menu_town_selector.tscn")
var budget_timeline_scene = load("res://scenes/user_interface/menu_budget_timeline_selector.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Send page count, current page to nav buttons
	nav_buttons.pages = PAGES
	nav_buttons.cur_page = STARTING_PAGE
	play_button.get_child(0).get_child(0).disabled = true
	play_button.visible = false
	
	if nav_buttons.cur_page == 0:
		menu_content.add_child(welcome_scene.instantiate())
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if town_selection and budget_timeline_selection:
		play_button.get_child(0).get_child(0).disabled = false
		play_button.visible = true

	
	pass
	
	

func _on_nav_buttons_page_change() -> void:
	for child in menu_content.get_children():
			child.queue_free()
	# Welcome page
	if nav_buttons.cur_page == 0:
		menu_content.add_child(welcome_scene.instantiate())
	
	# First page of setup (town selection)
	if nav_buttons.cur_page == 1:
		EventBus.set_town_selection.connect(_update_town_choice)
		menu_content.add_child(town_selector_scene.instantiate())

	# Second page of setup (budget timeline selection)
	if nav_buttons.cur_page == 2:
		EventBus.set_budget_timeline.connect(_update_timeline_choice)
		menu_content.add_child(budget_timeline_scene.instantiate())
		EventBus.restore_budget_timeline.emit(budget_timeline_selection)

		
	
	pass # Replace with function body.

func _update_town_choice(name) -> void:
	print(name)
	town_selection = name
	pass
func _update_timeline_choice(years) -> void:
	print(years)
	budget_timeline_selection = years
	pass
