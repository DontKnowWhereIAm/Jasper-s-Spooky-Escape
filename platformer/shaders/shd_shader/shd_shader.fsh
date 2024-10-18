//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//uniform vec2 u_ghostPosition;  // Position of obj_ghost in screen coordinates (passed from GML)
//uniform float u_radius;        // Radius around ghost where brightness is higher
//uniform float u_darknessFactor; // General darkness factor for the whole scene

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	vec4 color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	//vec2 pixelPos = gl_FragCoord.xy;
    //float distanceToGhost = distance(pixelPos, u_ghostPosition);
	//float brightness = smoothstep(u_radius, u_radius * 0.5, distanceToGhost);
	//color.rgb *= mix(1.0, u_darknessFactor, brightness);  // Less dark near the ghost

    // Reduce brightness for a darker, spookier effect
    float darknessFactor = 0.7;  // Adjust this value to control the darkness
    color.rgb *= darknessFactor;  // Apply darkness only to RGB channels
	


    gl_FragColor = color;
}
