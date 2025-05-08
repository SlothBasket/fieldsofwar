extends Resource
class_name Attack

@export var atkName : String
@export var minRange : int
@export var maxRange : int



func rollAttack(target):
	target.unitres = null
	print("attacked")
	target._update_field()
