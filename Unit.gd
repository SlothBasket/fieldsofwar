extends Resource
class_name Unit
@export var icon: Texture
@export var unitMaxNum : int
@export var unitNum : int
@export var strength : int
@export var defense : int
@export var moves : Array[Resource]

@export var xcord : int
@export var ycord : int

func checkAttack(target, atk):
	if xcord == target.unitres.xcord:
		if abs(ycord - target.unitres.ycord) >= atk.minRange and abs(ycord - target.unitres.ycord) <= atk.maxRange   :
			atk.rollAttack(target)
			return
	if ycord == target.unitres.ycord:
		if abs(xcord - target.unitres.xcord) >= atk.minRange and abs(xcord - target.unitres.xcord) <= atk.maxRange   :
			atk.rollAttack(target)
			return
