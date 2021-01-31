extends Button

func _ready():
	self.connect("pressed", self, "_button_pressed")

func _button_pressed():
		Global.currentScore = 0 #new game, new score
		var player = get_tree().get_current_scene().get_node("AudioStreamPlayer")
		print("Audio player is playing: " + str(player.playing))
		player._stopit()
		player.volume_db = 0
		var timer = Timer.new()
		add_child(timer)
		timer.connect("timeout", self, "_moveNext")
		timer.set_wait_time(2)
		timer.start()

func _moveNext():
		get_tree().change_scene("res://LevelStartScene.tscn")
	
