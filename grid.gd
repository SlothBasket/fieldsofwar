extends GridContainer


var fieldpath = preload("res://Field.tscn")
var column = self.columns

var maxX = 3
var maxY = 3
var maxbox = 0

var countX = 0
var countY = 0
var boxcount = 0

func _ready() -> void:
	buildgrid()



func buildgrid():
	maxbox = maxX*maxY
	countY = maxY
	column = maxX
	while boxcount < maxbox:
		var box = fieldpath.instantiate()
		countX += 1
		if countX > maxX:
			countX = 1
			countY -=1
		box.xcord = countX
		box.ycord = countY
		
		self.add_child(box)
		boxcount += 1
