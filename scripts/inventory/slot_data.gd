extends Resource
class_name SlotData

@export var item_data : ItemData
@export var quantity : int = 1 : set = set_quantity

func set_quantity(value):
	quantity = min(value, item_data.max_stack_size) #Ensures max stack size can't be exceeded
	quantity = max(1, quantity) #Ensures can have less than 1 item
