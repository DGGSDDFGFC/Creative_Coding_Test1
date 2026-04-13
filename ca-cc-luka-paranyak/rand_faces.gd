extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	draw_face()
	pass
	
func draw_face():
	var posx = randf_range(0, 1000)
	var posy = randf_range(0, 500)
	var radius = randi_range(20, 150)
	var eyes = randi_range(2, 6)
	var col = Color.from_hsv(randf(), 1, 1)
	var happy = randi_range(1, 2) # 1 is happy 2 is sad
	draw_circle(Vector2(posx, posy), radius, col, false)
	draw_circle(Vector2(posx, posy), 3, col, false)
	
	for i in range(2,eyes+2):
		var x = posx-radius+(i-1)*2*radius/(eyes+1)
		print(i)
		draw_circle(Vector2(x,posy-5-radius/5),3,col, false)
	
		
	if happy == 1:
		draw_line(Vector2(posx-radius/2, posy+radius/3), Vector2(posx+radius/2, posy+radius/3), col)
		draw_line(Vector2(posx-radius/2, posy+radius/3), Vector2(posx-radius, posy-radius/3), col)
		draw_line(Vector2(posx+radius/2, posy+radius/3), Vector2(posx+radius, posy-radius/3), col)
	else:
		draw_line(Vector2(posx-radius/2, posy+radius/3), Vector2(posx+radius/2, posy+radius/3), col)
		draw_line(Vector2(posx-radius/2, posy+radius/3), Vector2(posx-radius, posy+radius/1.5), col)
		draw_line(Vector2(posx+radius/2, posy+radius/3), Vector2(posx+radius, posy+radius/1.5), col)
	pass
