class Bullets extends GameObject{
  
  int Timer;

  Bullets(){
    super(EyeX,EyeY,EyeZ,10);
    float Vx = cos(LeftRightRotate);
    float Vy = tan(UpDownRotate);
    float Vz = sin(LeftRightRotate);
    Velocity = new PVector(Vx,Vy,Vz);
    Velocity.setMag(70);
    Timer = 0;
    Health = 1;
  }
  
  void act(){
    int HitX = int (Position.x + 4000) / GridSize; 
    int HitZ = int (Position.z + 4000) / GridSize;//                                              Outside Tall Wall                                                           Inner Wall and Inner Wall Ceiling                                                                First Ceiling                                                      First Ceiling Gap and Sea Lanterns                                       Second Ceiling                                                            Third Ceiling and Top Diamonds                                                                       Diamond Piller                                                                             StrippedWarpedStem Piller                                                                           Glass Piller                                                                                                          Shorter 4 Piller 2 Blocks Height                                                                                                    Top Ceiling Ice Top Sea Lanterns Top Blocks
    if ((Position.y>=180&&Position.y<=300) || (Position.y>=-2000&&Position.y<=-2120) || (Map.get(HitX,HitZ)==#b83dba&&Position.y>=-700) || (Map.get(HitX,HitZ)==#FFAEC8 &&((Position.y<= 200&&Position.y>=-200)||(Position.y<-700&&Position.y>=-800))) || (Map.get(HitX,HitZ)==#D01652&&(Position.y<=-700&&Position.y>=-800)) || (Map.get(HitX,HitZ)==#88001B&&(Position.y<-700&&Position.y>=-900)) || (Map.get(HitX,HitZ)==#3F48CC&&(Position.y<=-900&&Position.y>=-1000)) || ((Map.get(HitX,HitZ)==#8CFFFB||Map.get(HitX,HitZ)==#C4FF0E)&&(Position.y<=-1000&&Position.y>=-1100)) || (Map.get(HitX,HitZ)==#00A8F3&&(Position.y<=200&&Position.y>=-1100)) || (Map.get(HitX,HitZ)==#0ED145&&((Position.y<=200&&Position.y>=-200)||(Position.y<=-700&&Position.y>=-1100))) || (Map.get(HitX,HitZ)==#FFF200&&((Position.y<=200&&Position.y>=-300)||(Position.y<=-600&&Position.y>=-1100))) || (Map.get(HitX,HitZ)==#FF7F27&&((Position.y<=200&&Position.y>=0)||(Position.y<=-900&&Position.y>=-1100))) || ((Map.get(HitX,HitZ)==#390000||Map.get(HitX,HitZ)==#458886||Map.get(HitX,HitZ)==#FFFFFF)&&Position.y<=-1100&&Position.y>=-1200)){
      Health = 0;
      if (HitX > 0 && HitX < 80 && HitZ > 0 && HitZ < 80){
        for (int i = 0; i < 40; i++){
          Objects.add(new SnowParticles(Position));
        } 
      }
    }
    else {
      super.act();
      Position.y = Position.y + 0.2*(0.1)*(Timer*Timer);
      Timer++;
    }
  }
  
  void show(){
    World.pushMatrix();
      //World.pointLight(255,255,255, Position.x, Position.y, Position.z); 
      World.translate(Position.x, Position.y, Position.z);
      World.fill(#D0F1F1);
      World.noStroke();
      World.sphere(14);
    World.popMatrix(); 
  }
}

//HitX < 0 || HitX > 80 || HitZ < 0 || HitZ > 80|| Map.get(HitX,HitZ) == #b83dba
