shader_type canvas_item;

uniform bool isHovered = false;

void fragment() {
	if (isHovered)
	{
		vec4 sourceColor = texture(TEXTURE, UV);
		vec3 inverseColor = vec3(1.0 - sourceColor.r, 1.0 - sourceColor.g, 1.0 - sourceColor.b);
		COLOR.rgb = inverseColor;
	}
}
