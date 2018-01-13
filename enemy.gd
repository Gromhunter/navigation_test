extends Sprite

var points=null
var nav=null



func _ready():
	set_process_input(true)
	set_fixed_process(true)
	nav=get_tree().get_root().get_node("root/level/room/navigation")

func _fixed_process(delta):
	update()

func _input(event):	
	if (event.type==InputEvent.MOUSE_BUTTON):		
		points=nav.get_simple_path(get_global_pos(),event.pos)
		print(points)

func _draw():
	if not(points==null):
		for i in points:
			draw_circle(i-get_global_pos(),3,Color(255,0,0))
			