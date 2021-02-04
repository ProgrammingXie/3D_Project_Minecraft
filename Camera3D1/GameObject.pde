class GameObject{
  
  PVector Position;
  PVector Velocity;
  int Health;
  int Size;

  GameObject(){
    Position = new PVector(0,0,0);
    Velocity = new PVector(2,2,2);
    Health = 1;
    Size = 10;
  }
  
  GameObject(float X, float Y, float Z, int S){
    Health = 1;
    Position = new PVector(X,Y,Z);
    Size = S;
  }

  void act(){
     Position.add(Velocity);
   
  }
 
  void show(){
    //World.pushMatrix();
    //  World.translate(Position.x, Position.y, Position.z);
    //  World.fill(255);
    //  World.noStroke();
    //  World.sphere(Size);
    //World.popMatrix(); 
  }
}
