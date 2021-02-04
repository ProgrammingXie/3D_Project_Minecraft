
void TexturedBlocks(float X, float Y, float Z, PImage Texture, int Size){// Same Texture All Sides
 World. pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    //rotateX(RotateX);
    //rotateY(RotateY);
    World.noStroke();
    
    
    World.beginShape(QUADS);
      World.texture(Texture);
      
      //           X,Y,Z, tX,tY
      World.vertex(0,0,0, 0,0);// Top
      World.vertex(1,0,0, 1,0);
      World.vertex(1,0,1, 1,1);
      World.vertex(0,0,1, 0,1);

      World.vertex(0,1,0, 0,0);// Bottom
      World.vertex(1,1,0, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
    
      World.vertex(0,0,1, 0,0);// Front
      World.vertex(1,0,1, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
        
      World.vertex(0,0,0, 0,0);// Back
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(0,0,0, 0,0);// Left
      World.vertex(0,0,1, 1,0);
      World.vertex(0,1,1, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(1,0,1, 0,0);// Right 
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(1,1,1, 0,1);   
    World.endShape();
    
    
  World.popMatrix();
}

//===================================================================================================

void TexturedBlocks(float X, float Y, float Z, PImage Top, PImage Sides, PImage Bottom, PImage Front, int Size){
  
  
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    //rotateX(RotateX);
    //rotateY(RotateY);
    World.noStroke();
    
    World.beginShape(QUADS);
      World.texture(Top);
      //     X,Y,Z, tX,tY
      World.vertex(0,0,0, 0,0);// Top
      World.vertex(1,0,0, 1,0);
      World.vertex(1,0,1, 1,1);
      World.vertex(0,0,1, 0,1);
    World.endShape();
    
    World.beginShape(QUADS); 
      World.texture(Bottom);
      World.vertex(0,1,0, 0,0);// Bottom
      World.vertex(1,1,0, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
    World.endShape();
    
   World. beginShape(QUADS); 
      World.texture(Front);
      World.vertex(0,0,1, 0,0);// Front
      World.vertex(1,0,1, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
    World.endShape();
    
    World.beginShape(QUADS); 
      World.texture(Sides);
      World.vertex(0,0,0, 0,0);// Back
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(0,0,0, 0,0);// Left
      World.vertex(0,0,1, 1,0);
      World.vertex(0,1,1, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(1,0,1, 0,0);// Right 
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(1,1,1, 0,1);   
    World.endShape();
       
  World.popMatrix();
}
//=================================================================================================== 

void TexturedBlocksFire(float X, float Y, float Z, PImage Sides, PImage Bottom, int Size){
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    //rotateX(RotateX);
    //rotateY(RotateY);
    World.noStroke();
    
    World.beginShape(QUADS); 
      World.texture(Bottom);
      World.vertex(0,1,0, 0,0);// Bottom
      World.vertex(1,1,0, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
    World.endShape();
    
    World.beginShape(QUADS); 
      World.texture(Sides);
      
      World.vertex(0,0,1, 0,0);// Front
      World.vertex(1,0,1, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
      
      World.vertex(0,0,0, 0,0);// Back
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(0,0,0, 0,0);// Left
      World.vertex(0,0,1, 1,0);
      World.vertex(0,1,1, 1,1);
      World.vertex(0,1,0, 0,1);
        
      World.vertex(1,0,1, 0,0);// Right 
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(1,1,1, 0,1);   
    World.endShape();
       
  World.popMatrix();
}
//=================================================================================================== 

void TexturedBlocksOneSideRight(float X, float Y, float Z, PImage Sides, int Size){
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    World.noStroke();
       
    World.beginShape(QUADS); 
      World.texture(Sides);        
      //World.vertex(0,0,0, 0,0);
      //World.vertex(0,0,1, 1,0);
      //World.vertex(0,1,1, 1,1);
      //World.vertex(0,1,0, 0,1);
        
      World.vertex(1,0,1, 0,0);
      World.vertex(1,0,0, 1,0);
      World.vertex(1,1,0, 1,1);
      World.vertex(1,1,1, 0,1);   
    World.endShape();
       
  World.popMatrix();
}
//=================================================================================================== 

void TexturedBlocksOneSideLeft(float X, float Y, float Z, PImage Sides, int Size){
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    World.noStroke();    
    
    World.beginShape(QUADS); 
      World.texture(Sides);        
      World.vertex(0,0,0, 0,0);
      World.vertex(0,0,1, 1,0);
      World.vertex(0,1,1, 1,1);
      World.vertex(0,1,0, 0,1);
      
      //World.vertex(1,0,1, 0,0);
      //World.vertex(1,0,0, 1,0);
      //World.vertex(1,1,0, 1,1);
      //World.vertex(1,1,1, 0,1);   
    World.endShape();
       
  World.popMatrix();
}
//=================================================================================================== 

void TexturedBlocksTop(float X, float Y, float Z, PImage Top, int Size){  
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    World.noStroke();
    
    World.beginShape(QUADS);
      World.texture(Top);
      //     X,Y,Z, tX,tY
      World.vertex(0,0,0, 0,0);// Top
      World.vertex(1,0,0, 1,0);
      World.vertex(1,0,1, 1,1);
      World.vertex(0,0,1, 0,1);
    World.endShape();
       
  World.popMatrix();
}

//=================================================================================================== 

void TexturedBlocksBottom(float X, float Y, float Z, PImage Bottom, int Size){  
  World.pushMatrix();
    World.translate(X, Y, Z);
    World.scale(Size);
    World.noStroke();
    
    World.beginShape(QUADS); 
      World.texture(Bottom);
      World.vertex(0,1,0, 0,0);// Bottom
      World.vertex(1,1,0, 1,0);
      World.vertex(1,1,1, 1,1);
      World.vertex(0,1,1, 0,1);
    World.endShape();
       
  World.popMatrix();
}
