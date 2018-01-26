
//varying lowp vec4 DestinationColor;
varying lowp vec2 TexCoordOut;
uniform sampler2D Texture;
uniform sampler2D InsectTexture;


void main(void) {
    gl_FragColor = mix(texture2D(Texture, TexCoordOut), texture2D(InsectTexture, TexCoordOut), 0.5);
}
