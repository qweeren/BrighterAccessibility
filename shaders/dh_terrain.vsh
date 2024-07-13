#version 120

out vec4 blockColor;

void main(){

    blockColor = gl_Color;

    gl_Position = ftransform();
}