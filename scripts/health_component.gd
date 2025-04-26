@icon("res://icons/heart_2d.svg")
extends Node2D

class_name HealthComponent

func take_fire_effect() -> void:
	print(self, ": I'm literally on fire....")

func get_icons_path():
	return "icon.svg"
