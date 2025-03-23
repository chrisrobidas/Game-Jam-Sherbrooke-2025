shader_type canvas_item;

uniform vec3 highlightColor : source_color = vec3(1.0);
uniform vec2 highlightOpacityRange = vec2(0.2, 0.5);
uniform float highlightBlinkSpeed = 1.0;
uniform bool isHovered = false;

void fragment() {
	if (isHovered)
	{
		vec4 sourceColor = texture(TEXTURE, UV);
		float range = sin(TIME / highlightBlinkSpeed) * 0.5 + 0.5;
		float highlightColorIntensity = range * (highlightOpacityRange.y - highlightOpacityRange.x) + highlightOpacityRange.x;
		COLOR.rgb = mix(sourceColor.rgb, highlightColor, highlightColorIntensity);
		COLOR.a = sourceColor.a;
	}
}