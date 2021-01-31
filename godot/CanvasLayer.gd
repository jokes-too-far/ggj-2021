extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func show_Message(text):
	$Message.text = text

func set_Score(text):
	get_node("ScoreBox/HBoxContainer/Score").text = text


func show_BigMessage(text):
	$SuccessLabel.text = text
	$AnimationPlayer.play("animate_message")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
