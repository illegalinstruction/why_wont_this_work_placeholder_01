extends Spatial

#=========================================================

var x_rot : float;
var y_rot : float;

#=========================================================

func _ready():
    x_rot = 0.0;
    y_rot = 0.0;
    return;

#=========================================================

func _process(_delta):
    x_rot = x_rot + 0.0125;
    y_rot = sin(x_rot/21.0) * .028;
    rotate_x(0.0125);
    rotate_y(y_rot);
    
    if (Input.is_key_pressed(KEY_ESCAPE)):
        get_tree().quit();
    
    return;
