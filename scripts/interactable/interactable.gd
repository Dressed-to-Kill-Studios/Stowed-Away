extends StaticBody3D
class_name Interactable

@export var interact_area : CollisionShape3D


func _ready():
	assert(interact_area, "No Interact Area")


func interact(interactor : CharacterBody3D):
	pass
