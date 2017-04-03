extends ParallaxBackground

var ofsetloc = 0

func _ready():
	set_process(true)

func _process(delta):
	ofsetloc = ofsetloc + 125 * delta
	set_scroll_offset(Vector2(0, ofsetloc))
	