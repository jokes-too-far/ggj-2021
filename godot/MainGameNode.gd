extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#Put some color on that tuba
	randomize()
	var material = SpatialMaterial.new()
	var r = rand_range(0.0, 1.0)
	var g = rand_range(0.0, 1.0)
	var b = rand_range(0.0, 1.0)
	material.albedo_color = Color(0.1, 0.5, 1)
	get_node("TubaSpatial/TubaMesh/tuba/SketchUp").set_surface_material(0, material)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
