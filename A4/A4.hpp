#pragma once

#include <glm/glm.hpp>

#include "SceneNode.hpp"
#include "Light.hpp"
#include "Image.hpp"
#include "Ray.hpp"
#include "Intersection.hpp"

struct HitColor {
	bool hit;
	glm::dvec3 color;
};


void A4_Render(
		// What to render
		SceneNode * root,

		// Image to write to, set to a given width and height
		Image & image,

		// Viewing parameters
		const glm::vec3 & eye,
		const glm::vec3 & view,
		const glm::vec3 & up,
		double fovy,

		// Lighting parameters
		const glm::vec3 & ambient,
		const std::list<Light *> & lights
);

double calculate_d(double h, double fovy);
glm::dvec4 calculate_p_in_view_coordinates(double x, double y, double w, double h, double d);
glm::dvec4 calculate_p_in_world(double x, double y, const glm::dmat4 & trans);

glm::dmat4 T1(double nx, double ny, double d);
glm::dmat4 S2(double w, double h, double nx, double ny);
glm::dmat4 R3(glm::vec3 up, glm::vec3 eye, glm::vec3 view);
glm::dmat4 T4(glm::vec3 eye);

// create a Ray from image pixel.
Ray createRay(glm::dvec4 p1, glm::dvec4 p2);

// Test to see if r hit anything.
Intersection hit(const Ray & r, SceneNode * root);

// Return the color given
HitColor rayColor(const Ray & r, const std::list<Light*> & lights, int counter = 0);

// Cast shadow ray and get the color for the shadow ray.
glm::dvec3 directLight(const std::list<Light*> & lights,
                       const Intersection & primary_intersect);

glm::dvec3 specularHighlight(const std::list<Light *> & lights,
                             const Intersection & primary_intersect);

glm::dvec3 backgroundColor(int x, int y);


// Calculate the probability of reflectance.
double reflectance(const glm::dvec4 & normal, const glm::dvec4 & IncomingVector, double fromReflectiveIndex, double toReflectiveIndex);
Ray refractedRay(const Ray & ray, const Intersection & intersection);

double simplifiedFresnelModel(const glm::dvec4 & normal,
							  const glm::dvec4 & IncomingVector,
							  double fromReflectiveIndex,
							  double toReflectiveIndex);

// Return a random double between 0 and 1
double random_double();

// Purturbe a vector
glm::dvec3 purturbe(glm::dvec3 R, double exponent);

// Create purturbed rays into a vector. It will eliminate rays that below the tangent plane where the normal is at.
std::vector<glm::dvec3> purturbedRays(glm::dvec3 R, glm::dvec3 normal, double exponent, int size);
