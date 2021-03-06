//
//  cube.hpp
//  CS488-Projects
//
//  Created by Chen Huang on 1/10/16.
//  Copyright © 2016 none. All rights reserved.
//

#ifndef cube_hpp
#define cube_hpp

#include "Shape.hpp"
#include <vector>
#include "cs488-framework/ShaderProgram.hpp"


class Cube : public Shape {
public:
	
	// Construct a cube with world position.
	Cube(glm::vec3 position, GLfloat size);
	
	// Destructor for cube.
	virtual ~Cube();
	
	// side size
	GLfloat side_size;
	
	// Upload VBO data
	void uploadVboData();
	
	// Upload VAO data
	void uploadVaoData(const ShaderProgram &shader);
	
	// Upload EbO data
	void uploadEboData();
	
	void debugPrint();
	
	void uploadData(const ShaderProgram &shader);
	
	virtual bool operator==(const Cube& other);
	
	int colorIndex;
	
};

#endif /* cube_hpp */
