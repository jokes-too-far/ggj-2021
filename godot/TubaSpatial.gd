extends Spatial

var myType="tuba"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			#get_parent().get_node("HUD").show_Message("Uhh, thanks for the tuba I guess?")
			#get_parent()._displayLostItemPrompt()
			#When we have more than 1 object...
			get_parent()._chooseItem(myType)
