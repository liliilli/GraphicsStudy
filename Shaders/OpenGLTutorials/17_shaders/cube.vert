#version 330 core
layout (location = 0) in vec3 aPos;

out vec3 TexCoord;

uniform mat4 projection;
uniform mat4 view;

void main() {
    TexCoord = normalize(aPos);
    gl_Position = projection * view * vec4(20 * aPos, 1.0);
	gl_Position = gl_Position.xyww;
} 