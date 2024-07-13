#version 120

uniform sampler2D texture;

varying vec3 tintColor;
varying vec3 normal;

varying vec4 texcoord;
varying vec4 lmcoord;

void main() {
  vec4 blockColor = texture2D(texture, texcoord.st);
  blockColor.rgb *= tintColor;

  gl_FragData[0] = blockColor;
  gl_FragData[1] = vec4(lmcoord.st/16.0, 0.0, 0.0);
  gl_FragData[2] = vec4(normal * 0.5 + 0.5, 1.0f);
}
