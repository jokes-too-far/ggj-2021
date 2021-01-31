extends Button



func _ready():
	self.connect("pressed", self, "_button_pressed")

func _button_pressed():
		get_tree().change_scene("res://MainMenuScene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
