extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("tuba is ready")
	#pass # Replace with function body.

func _setColor(color):
	var material = SpatialMaterial.new()
	material.albedo_color = color
	get_node("SketchUp").set_surface_material(0, material)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
