shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture;
uniform vec3 highlightColor : source_color = vec3(1.0);
uniform vec2 highlightOpacityRange = vec2(0.2, 0.5);
uniform float highlightBlinkSpeed = 1.0;
uniform bool isHovered = false;

void fragment() {
	if (isHovered)
	{
		COLOR.rgb = highlightColor;
		float value = sin(TIME / highlightBlinkSpeed) * 0.5 + 0.5;
		COLOR.a = value * (highlightOpacityRange.y - highlightOpacityRange.x) + highlightOpacityRange.x;
	}
	else
	{
		COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	}
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
