
//varying lowp vec4 DestinationColor;
varying lowp vec2 TexCoordOut;
uniform sampler2D Texture;
uniform sampler2D InsectTexture;


void main(void) {
    lowp vec4 insect = texture2D(InsectTexture, TexCoordOut);
    lowp vec4 leaf = texture2D(Texture, TexCoordOut);
    gl_FragColor = mix(leaf, insect, insect.a);
}
