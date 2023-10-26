extends XROrigin3D

"""
height		= 1.4
radius		= 0.2
jump height	= 0.5
step height	= 0.05
"""

@onready var player_body: CharacterBody3D = $PlayerBody
@onready var player_camera: XRCamera3D = $PlayerCamera
@onready var l_hand: XRController3D = $LHand
@onready var r_hand: XRController3D = $RHand


func _ready() -> void:

	pass
