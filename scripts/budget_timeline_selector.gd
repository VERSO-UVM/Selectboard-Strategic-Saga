extends MarginContainer
@onready var slider: HSlider = $VBoxContainer/HSlider
@onready var timeline_label: RichTextLabel = $VBoxContainer/RichTextLabel

var check_val = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.restore_budget_timeline.connect(_set_timeline)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timeline_label.text = "Plan your budget for: " + str(int(slider.value)) + " years"
	if int(slider.value) != check_val:
		_slider_updated()
		check_val = int(slider.value)
	pass
	
func _slider_updated():
	EventBus.set_budget_timeline.emit(int(slider.value))

# Persistent data
func _set_timeline(years):
	if years:
		slider.value = years
