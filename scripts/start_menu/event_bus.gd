extends Node
# This class is awesome! It serves as a global hub for 
# signals to be emitted and connected from any other scripts
# in the project! 
# Found this strategy from: https://www.reddit.com/r/godot/comments/1834hkn/gdscript_tip_using_signals_to_make_a_decoupled/?share_id=CEaHH3zSNtwfBAAaLkOQy&utm_content=2&utm_medium=android_app&utm_name=androidcss&utm_source=share&utm_term=1

# When a town is selected from the town selector scrollable box
signal set_town_selection(name)

# TODO: restore_town_selection(id) with some unique id to 
# TODO: focus the chosen container in the selector list

# When the budget timeline value is selected from hslider
signal set_budget_timeline(years: int)

# Establish selected values
signal restore_budget_timeline(years: int)

# When play button is pressed
signal play_game()
