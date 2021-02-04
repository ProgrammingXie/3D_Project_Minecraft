class Asteroids{
  PVector Position;
  int Size;
  int Health;
  int RotateY;
  int UpDownY;
  int Gap;
  int LocationY;
  int LocationX;
  int LocationZ;
  int Speed;
  int Shape;
  int RandomDistance;
  int C1;
  int C2;
  int C3;
  int MoveDownUp;
  boolean MoveReverse;
  
  Asteroids(){
    Position = new PVector (0,0,0);     
    RotateY = 0;
    Size = (int) random(20,150);
    Health = 1;
    Speed = (int) random(-4,4);
    Shape = (int) random(0,2);
    RandomDistance = (int) random(0,2);
    
    LocationY = (int) random(-3000,2000);
        
    if (RandomDistance == 0){
      MoveReverse = true;
      if (LocationY <= 300 && LocationY >= -1200){
        LocationX = (int) random(4600,6600);
        LocationZ = (int) random(4600,6600);
      }
      else {
        LocationX = (int) random(-5600,5600);
        LocationZ = (int) random(-5600,5600);
      }
      if (Speed == 0){
        Speed = - 1;
      }
    }
    else {
      MoveReverse = false;
      if (LocationY <= 300 && LocationY >= -1200){
        LocationX = (int) random(-6600,-4600);
        LocationZ = (int) random(-6600,-4600);
      }
      else {
        LocationX = (int) random(-5600,5600);
        LocationZ = (int) random(-5600,5600);
      }
      if (Speed == 0){
        Speed = - 1;
      }
    }
    
    C1 = (int) random(0,256);
    C2 = (int) random(0,256);
    C3 = (int) random(0,256);
  }
  
  
  void act(){  
    RotateY = RotateY + Speed;
    if (MoveReverse){
      MoveDownUp-=20;
      if (MoveDownUp <= -3000){
        MoveReverse = false;        
      }
    }
    else {
      MoveDownUp+=20;
      if (MoveDownUp >= 2000){
        MoveReverse = true;        
      }
    }
  }
  
  
  void show(){
    
    World.pushMatrix();
      World.rotateY(radians(RotateY));
      //World.rotateX(radians(RotateY));
      //World.rotateZ(radians(RotateY));
      World.translate(LocationX, LocationY+MoveDownUp, LocationZ);           
      World.fill(C1,C2,C3);
      if (Shape == 0){
      World.noStroke();
        World.sphere(Size);
      }
      else {
        World.box(Size);
      }
      
    World.popMatrix();
    
    if (InsideMap){
      Health = 0;
    }
    
    
    println(LocationY);
  }





//Asteroids(){
//    Position = new PVector (0,0,0);     
    
//    //Position.x = (int) random(5300,10000);
//    //Position.y = (int) random(-8000,2000);
//    //Position.z = (int) random(5300,10000);
    
//    RotateY = 0;
//    LocationY = (int) random(400,1200);
//    LocationX = (int) random(-3600,3600);
//    LocationZ = (int) random(-3600,3600);
//    //LocationX = 1000;
//    //LocationZ = 1000;
//    Size = (int) random(20,150);
//    Health = 1;
//    Speed = (int) random(-2,2);
//    if (Speed == 0){
//      Speed = - 1;
//    }
//  }








}
