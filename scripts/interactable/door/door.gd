extends Interactable
class_name Door

enum LOCKED_STATES {
	UNLOCKED,
	LOCKED,
	LOCKED_FROM_INSIDE,
}
@export var locked_state : LOCKED_STATES = LOCKED_STATES.UNLOCKED

@export var entry_point : Marker3D
@export var exit_point : Marker3D
@export var interact_camera : Camera3D


func interact(interactor : CharacterBody3D):
	pass
	


func _open_door(interactor : CharacterBody3D):
	var dist_to_entry := interactor.global_position.distance_to(entry_point.global_position)
	var dist_to_exit := interactor.global_position.distance_to(exit_point.global_position)
	
	var on_outside := true if dist_to_entry <= dist_to_exit else false
	
	interactor.global_position = exit_point.global_position if on_outside else entry_point.global_position

