extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Setting material color on root tuba?")
	var material = SpatialMaterial.new()
	#var material = self.get_surface_material(0)
	
	#Red recipe
	# (1, rand < 0.5, rand < 0.5)
	#Green recipe
	# (rand < 0.5, 1, rand < 0.5)
	#Blue recipe
	# (rand < 0.5, rand < 0.5, 1)
	
	randomize()
	var r = rand_range(0.0, 1.0)
	var g = rand_range(0.0, 1.0)
	var b = rand_range(0.0, 1.0)
	material.albedo_color = Color(0.1, 0.5, 1)
	self.set_surface_material(0, material)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
