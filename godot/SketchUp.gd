extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Setting material color on root tuba?")
	var material = SpatialMaterial.new()
	#var material = self.get_surface_material(0)
	randomize()
	var r = rand_range(0.0, 1.0)
	var g = rand_range(0.0, 1.0)
	var b = rand_range(0.0, 1.0)
	material.albedo_color = Color(r, g, b)
	self.set_surface_material(0, material)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
