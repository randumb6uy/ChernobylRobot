extends Panel
@onready var v_slider: VSlider = $Panel/VSlider
@onready var h_slider: HSlider = $w/HSlider



func _on_v_slider_value_changed(value: float) -> void:
	Global.direction.y = value


func _on_h_slider_value_changed(value: float) -> void:
	Global.direction.x = value


func _on_v_slider_drag_ended(value_changed: bool) -> void:
	var tween = create_tween()
	tween.tween_property(v_slider , "value" , 0.0 , 0.1)
	Global.direction.y = v_slider.value
	


func _on_h_slider_drag_ended(value_changed: bool) -> void:
	var tween = create_tween()
	tween.tween_property(h_slider , "value" , 0.0 , 0.1)
	Global.direction.x = h_slider.value
