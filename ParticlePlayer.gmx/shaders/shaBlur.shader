attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texelSize;
varying vec2 blurCoord[4];

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;

    blurCoord[0] = texelSize * 1.0;
    blurCoord[1] = texelSize * 2.0;
    blurCoord[2] = texelSize * 3.0;
    blurCoord[3] = texelSize * 4.0;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 blurCoord[4];

void main()
{
    vec4 sum = vec4(0.0, 0.0, 0.0, 0.0);    

    sum += texture2D(gm_BaseTexture, v_vTexcoord) * 0.220458;
    sum += texture2D(gm_BaseTexture, v_vTexcoord + blurCoord[0]) * 0.189986;
    sum += texture2D(gm_BaseTexture, v_vTexcoord - blurCoord[0]) * 0.189986;
    sum += texture2D(gm_BaseTexture, v_vTexcoord + blurCoord[1]) * 0.121592;
    sum += texture2D(gm_BaseTexture, v_vTexcoord - blurCoord[1]) * 0.121592;
    sum += texture2D(gm_BaseTexture, v_vTexcoord + blurCoord[2]) * 0.057793;
    sum += texture2D(gm_BaseTexture, v_vTexcoord - blurCoord[2]) * 0.057793;
    sum += texture2D(gm_BaseTexture, v_vTexcoord + blurCoord[3]) * 0.020400;
    sum += texture2D(gm_BaseTexture, v_vTexcoord - blurCoord[3]) * 0.020400;

    gl_FragColor = sum * v_vColour;
}
