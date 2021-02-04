class SnowParticles extends GameObject{
  
  int Alpha;
  int Timer;
  int VyInitial;
  
  SnowParticles(PVector Location){
    Position = Location.copy();
    if (Position.y >= 180){
      Position.y = 180;
    }
    else {
      Position.y = Position.y - 10;
    }  
    float Vx = random(-3,3);
    float Vy = random(-3,3);
    float Vz = random(-3,3);//random(-1,1)
    Velocity = new PVector(Vx,Vy,Vz);
    //Velocity.rotate(random(0,TWO_PI));
    Velocity.setMag(20);
    Size = (int)(random(1,18));
    Health = 1;
    Alpha = 255;
    Timer = 0;
    VyInitial = 20;

  }

  void act(){
    super.act();
    int HitX = int (Position.x + 4000) / GridSize;
    int HitZ = int (Position.z + 4000) / GridSize;
    //if (Position.y >= 200 || (Map.get(HitX,HitZ)==#b83dba&&Position.y>=-700) || (Map.get(HitX,HitZ)==#FFAEC8 &&((Position.y<= 200&&Position.y>=-200)||(Position.y<-700&&Position.y>=-800))) || (Map.get(HitX,HitZ)==#D01652&&(Position.y<=-700&&Position.y>=-800)) || (Map.get(HitX,HitZ)==#88001B&&(Position.y<-700&&Position.y>=-900)) || (Map.get(HitX,HitZ)==#3F48CC&&(Position.y<=-900&&Position.y>=-1000)) || ((Map.get(HitX,HitZ)==#8CFFFB||Map.get(HitX,HitZ)==#C4FF0E)&&(Position.y<=-1000&&Position.y>=-1100)) || (Map.get(HitX,HitZ)==#00A8F3&&(Position.y<=200&&Position.y>=-1100)) || (Map.get(HitX,HitZ)==#0ED145&&((Position.y<=200&&Position.y>=-200)||(Position.y<=-700&&Position.y>=-1100))) || (Map.get(HitX,HitZ)==#FFF200&&((Position.y<=200&&Position.y>=-300)||(Position.y<=-600&&Position.y>=-1100))) || (Map.get(HitX,HitZ)==#FF7F27&&((Position.y<=200&&Position.y>=0)||(Position.y<=-900&&Position.y>=-1100))) || ((Map.get(HitX,HitZ)==#390000||Map.get(HitX,HitZ)==#458886||Map.get(HitX,HitZ)==#FFFFFF)&&((Position.y<=200&&Position.y<=-1100)||(Position.y<=-700&&Position.y>=-1200)))){
    if (Position.y >= 200){
      Health = 0;
    }
    else {
      Position.y = Position.y  + 0.5*(0.3)*(Timer*Timer);
      Timer++;
    }
  }

  void show(){
    
    World.pushMatrix();
      World.translate(Position.x, Position.y, Position.z);
      World.fill(#7BA6A6,Alpha);
      World.stroke(#E8F8F8);
      World.box(Size);    
    World.popMatrix();
    
    if (CloseSetting){
      Alpha = Alpha - 2;
      if (Alpha <= 0){
        Alpha = 0;
        Health = 0;
      }
    }
    
  }
}
