extends PanelContainer
@export var xcord = 0
@export var ycord = 0
@onready var label = $Label
@export var unitres: Resource
@onready var warriorscene = preload("res://Warrior.tres")
@onready var sprite = $Panel/Sprite2D
@onready var main = get_node("/root/Main")


func _ready() -> void:
	pass
	

func _gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if unitres == null:
				var newWarrior = warriorscene.duplicate(true)
				newWarrior.xcord = xcord
				newWarrior.ycord = ycord
				unitres = newWarrior
				_update_field()
	
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			if main.selectedUnit == null and unitres != null:
				main.selectedUnit = unitres
				return
			if main.selectedUnit != null:
				if unitres != null:
					main.selectedUnit.checkAttack(self, unitres.moves[0])
				

func _update_field():
	if unitres != null:
		sprite.texture = unitres.icon
		label.text = "ATK " + str(unitres.strength) + "   " + "DEF " + str(unitres.defense)
		return
	if unitres == null:
		sprite.texture = null
		label.text = ""
		print("reset")
