extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Scenarios = []
var dialogMadlibs = [
	"You know, it's that thing that's...umm...",
	"I think it'sh",
	"I dunno, man, all I can remember is that it'sh",
	"How many thingsh do you have that're"	,
	"How hard is this?  It's",
	"My thing is",
	"Umm...maybe it's",
	"I just 'membered!  It's ",
	"I lost it, and all I remember is it's"
]
var desiredObject
var promptCount = -1
var colorOptions = ["red", "blue", "green"]

# Called when the node enters the scene tree for the first time.
func _ready():
	#Put some color on that tuba
	randomize()
	_initializeScenarios()
	_setColor(desiredObject)
	_displayLostItemPrompt()


func _initializeScenarios():
	
	var randnbr = _getRandInt(colorOptions.size())
	print(randnbr)
	print(colorOptions.size())
	var mycolor = colorOptions[randnbr]
	var tubaObject = {
		type = "tuba",
		descr = ["loud","shiny", "hard", "big", "breakable"],
		color = mycolor,
		nodePath="TubaSpatial/TubaMesh/tuba/SketchUp"
	}
	desiredObject = tubaObject #because we have 1 option right now
	
func _displayLostItemPrompt():
	promptCount = promptCount+1
	var descrPrompt = dialogMadlibs[_getRandInt(dialogMadlibs.size())]
	#the last thing a drunk person thinks about is the color of their item
	if (promptCount > desiredObject.descr.size()-1): 
		descrPrompt = descrPrompt + " " + desiredObject.color
	else:
		descrPrompt = descrPrompt + " " + desiredObject.descr[promptCount]
	get_node("HUD").show_Message(descrPrompt)
	
func _setColor(thingy):
	var material = SpatialMaterial.new()
	randomize()
	var r1 = rand_range(0.0, 0.2)
	var r2 = rand_range(0.0, 0.2)
	if (thingy.color == "blue"):
		material.albedo_color = Color(r1, r2, 1)
	if (thingy.color == "red"):
		material.albedo_color = Color(1, r1, r2)
	if (thingy.color == "green"):
		material.albedo_color = Color(r1, 1, r2)
	get_node(thingy.nodePath).set_surface_material(0, material)
	
#Will never return MaxNum, but will return all ints up to it
func _getRandInt(maxNum):
	randomize()
	var r1 = rand_range(0, maxNum)
	return int(floor(r1))
	
func _chooseItem(type):
	if (desiredObject.type == type):
		get_node("HUD").show_Message("That'sh it! Thanks bruh...err...y'know, you. " +
		"Thanks. Gotta go, hangover's killing me.")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
