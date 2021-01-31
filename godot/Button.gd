extends Button

func _ready():
	self.connect("pressed", self, "_button_pressed")

func _button_pressed():
		Global.currentScore = 0 #new game, new score

		get_tree().change_scene("res://LevelStartScene.tscn")

#func _moveNext():
#		get_tree().change_scene("res://LevelStartScene.tscn")
	
