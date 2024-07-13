#version 120

uniform float viewHeight;
uniform float viewWidth;

/* DRAWBUFFERS:0 */
layout(location = 0) out vec4 outColor0;

uniform sampler2D depthtex0;
in vec4 blockColor;

void main(){
    float transparency = blockColor.a;
    if (transparency < 0.1) discard;
    vec2 texCoord = gl_FragCoord.xy / vec2(viewWidth, viewHeight);
    float depth = texture(depthtex0,texCoord).r;

    if (depth != 1.0) {
        discard;
    }

    outColor0 = blockColor;
}