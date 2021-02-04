class Fire extends GameObject{
  int HitX;
  int HitY;
  int HitZ;
  int Timer;
  int f;

  Fire(PVector Location){
    Position = Location.copy();
    if (Position.y >= 180){
      Position.y = 100;
    }
    Timer = 300;
    Health = 1;
    f = 0;
    //HitX = int (Position.x - 4000) / GridSize; 
    //HitY = int (Position.y - 4000) / GridSize;
    //HitZ = int (Position.z - 4000) / GridSize; 
  }

  void act(){
    //HitX = int (Position.x + 4000) / GridSize; 
    //HitY = int (Position.y + 4000) / GridSize;
    //HitZ = int (Position.z + 4000) / GridSize; 
  
  }
   
  void show(){
    pushMatrix();
      //HitX = int (Position.x + 4000) / GridSize; 
      //HitY = int (Position.y + 4000) / GridSize;
      //HitZ = int (Position.z + 4000) / GridSize; 
      PImage frame = Fire.get(f);
      if (CloseSetting){
        f++;
      }
      if (f > 19) f = 0;
      
      //translate(HitX,HitY,HitZ);
      TexturedBlocksFire(Position.x,Position.y,Position.z, frame,frame, 100);
    popMatrix();
    
    if (CloseSetting){
      Timer--;
      if (Timer <= 0){
        Health = 0;
        Timer = 0;
      }   
    }
    
    //println(HitX);
  
  }












}
