void Game(){
  imageMode(CORNER);
  if (CloseSetting){
    noCursor();
  }
  else {
    cursor();
  }
  World.beginDraw();
    //World.lights();
    World.background(0,0,0,WorldBackgroundFade);
    World.textureMode(NORMAL);
    World.camera(EyeX, EyeY+ThirdPersonY, EyeZ+ThirdPersonZ, FocusX, FocusY, FocusZ, UpX, UpY, UpZ);
    
    //World.pointLight(100,100,100, 0,-1100,0); 
    //World.pointLight(255,255,255,0,0,0);   
    //World.pointLight(255,255,255,0,0,0); 
    //directionalLight(255,255,255, FocusX, FocusY, FocusZ); 
    //World.ambientLight(255,255,255);    
    //lightSpecular(255,255,255);
    //RotateY = RotateY + (pmouseX - mouseX)*0.01;
    
    //if (!FirstPerson){
    //  World.pushMatrix();
    //    World.translate(EyeX,EyeY,EyeZ);// EyeX,EyeY+20,EyeZ+50
    //    World.rotateY(RotateY);
    //    World.box(60);
      
    //  World.popMatrix();
    //}
    
    if (!InsideMap){
      if (AddAsteroids){
        for (int i = 0; i < 100; i++){
          GameAsteroids.add(new Asteroids());
        }
        AddAsteroids = false;
      }
    }
    else {
      AddAsteroids = true;
    }
    
    for (int i = 0; i < GameAsteroids.size(); i++){
      Asteroids obj = GameAsteroids.get(i);
      if (obj.Health > 0){
        if (CloseSetting){
          obj.act();
        }
        obj.show();
      }
      else {
        GameAsteroids.remove(i);
      }
    }
    
    //World.stroke(255, 0, 0);
    //World.strokeWeight(6);
    //World.line(0, 0, 0, 0, -1000, 0);// X Y Z 
    //World.line(0, 0, 0, 400, 0, 0);
    
    for (int i = 0; i < Objects.size(); i++){
      GameObject obj = Objects.get(i);
      if (obj.Health > 0){
        if (CloseSetting){
          obj.act();
        }
        obj.show();
      }
      else {
        Objects.remove(i);
      }
    }
  
    EnvironmentMap();  
    DrawFloor(-4000, 4000, 100, 200,0); // Floor
    Movement();
    
    int PositionX = int(EyeX+4000) / GridSize;
    int PositionY = int(EyeZ+4000) / GridSize;
    color C = Map.get(PositionX, PositionY);// Changing Inside and Outside Map
    if (C == #000000 || C == #585858 || C == #2C2C2C | C == #574545){// Floor 
      InsideMap = false;
    }      
    else {
      if (PositionX <= 0 || PositionX >= 80 || PositionY <= 0 || PositionY >= 80){
        InsideMap = false;
      }
      else {
        InsideMap = true;
      }
    }
 
    
    //if (InsideMap){
    //  Asteroids();
    //}

  World.endDraw();
  image(World,0,0);
  
  if (CloseSetting){
    ShootingDelay--;
    if (ShootingDelay <= 0) ShootingDelay = 0;
    if (Shooting && ShootingDelay == 0){
      if (BulletType == 1){
        Objects.add(new Bullets());// Snowball
        ShootingDelay = 15;
      }
      else if (BulletType == 2){
        Objects.add(new Fireball());// Fireball
        ShootingDelay = 30;
      }
    }
  
    if (mousePressed && (TaskBarSelect == 1 || TaskBarSelect == 2)){
      if (TaskBarSelect == 1){// Snowball
        BulletType = 1;// Snowball
      }
      else if (TaskBarSelect == 2){// Fireball
        BulletType = 2;// Fireball
      }
      Shooting = true;
    }
    else {
      Shooting = false;
    }
  }
  
  
  Hud.beginDraw();// 2d HUD
    //background(0);
    Hud.clear();
    //if (FirstPerson){
      Crosshair();
    //}
    MiniMap();
    TaskBar();
    if (!CloseSetting){
      Setting();
    }
  Hud.endDraw();
  image(Hud,0,0);

}
