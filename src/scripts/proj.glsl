
uniform float size = 5.0;
uniform float fov = 35.0;
uniform float view_cone = 35;
uniform float aspect = 1.6;
uniform float num_views = 32;
uniform float uColOffset;

float get_dist() {

	float dist = size / tan(radians(0.5 * fov));
	return dist;
}

float get_mod() {
	float mod = 1 / (size * aspect);
	return mod;

}
float get_sweep(float dist)
{
	float sweep = -dist * tan(radians(view_cone));
	return sweep;
}

float get_lerp(int view)
{

	float lerp = float(view) / (num_views - 1.0) - 0.5;
	return lerp;

}

vec4 UserWorldToProj(vec4 worldSpaceVertPosition, int cameraIndex) {
	mat4 cam = uTDMats[cameraIndex].cam;
	mat4 proj = uTDMats[cameraIndex].proj;

	int view = cameraIndex * 4 + int(uColOffset);


	float my_lerp = get_lerp(int(view));

	float dist = get_dist();

	float sweep = get_sweep(dist);
	float my_mod = get_mod();

	//offset for dist
	cam[3][2] = cam[3][2] - dist;

	//offset camera in x based on view
	cam[3][0] = cam[3][0] + (my_lerp * sweep);

	//offset proj fustrum based on view
	proj[2][0] = proj[2][0] + (my_lerp * sweep * my_mod);


	vec4 out_point = proj * cam * worldSpaceVertPosition;
	return out_point;


}