
attribute vec3 Position;
attribute vec2 TexCoordIn;

varying vec2 TexCoordOut;

void main(void) {
    TexCoordOut = TexCoordIn;
    gl_Position = vec4(Position, 1.0);
}
