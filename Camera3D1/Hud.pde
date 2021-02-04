void Crosshair(){
  
  Hud.fill(0,255,0);
  Hud.stroke(0);
  Hud.strokeWeight(1);
  Hud.rect(width/2-2,height/2-13, 4,10, 2);// Crosshair Up
  Hud.rect(width/2-2,height/2+3, 4,10, 2);// Crosshair Down
  Hud.rect(width/2-13,height/2-2, 10,4, 2);// Crosshair Left
  Hud.rect(width/2+3,height/2-2, 10,4, 2);// Crosshair Right
  
}
//===================================================================================================

void MiniMap(){
  
  if (InsideMap){
    Hud.image(MapInside,20,20,240,240);// *3
    WorldBackgroundFade = 255;
    
  }
  else {
    Hud.image(MapOutside,20,20,240,240);// *3
    WorldBackgroundFade = 100;
  }
  fill(0);
  rect(13,13,254,254,4);
  fill(180);
  //stroke(0,255,255);
  //strokeWeight(4);
  noStroke();
  rect(17,17,246,246,2);
  
  int MiniX = int(EyeX+4000) / GridSize;
  if (MiniX >= 80){
    MiniX = 80;
  }
  if (MiniX <= 0){
    MiniX = 0;
  }
  int MiniY = int(EyeZ+4000) / GridSize;
  if (MiniY >= 80){
    MiniY = 80;
  }
  if (MiniY <= 0){
    MiniY = 0;
  }
  
  Hud.pushMatrix();// Player Position on small map
    Hud.translate(20,20);
    Hud.fill(#016A00);
    Hud.stroke(255);
    //Hud.ellipse(MiniX*3,MiniY*3,10,10);  
    
    Hud.pushMatrix();
      Hud.translate(MiniX*3,MiniY*3);
      Hud.rotate(LeftRightRotate+PI/2);
      Hud.beginShape();
        Hud.vertex(0,-11);
        Hud.vertex(8,9);
        Hud.vertex(0,5);
        Hud.vertex(-8,9);
      Hud.endShape(CLOSE);
    Hud.popMatrix();  
  Hud.popMatrix();
  
  Hud.textAlign(CORNER,CORNER);
  Hud.fill(#DE0000);
  Hud.textSize(20);
  Hud.text("X: " + MiniX, 155,290);
  Hud.text("Y: " + MiniY, 215,290);
  
  Hud.textAlign(CORNER,CORNER);
  Hud.fill(#DE0000);
  Hud.textSize(20);
  Hud.text("fps:",20,290);
  Hud.text(frameRate,60,291);
}
//===================================================================================================

void TaskBar(){
    
  if (TaskBarSelect == 1 || TaskBarSelect == 2){
    Hud.pushMatrix();
      Hud.translate(ArmMoveX,ArmMoveY);
      
      if (TaskBarSelect == 1){
        Hud.image(SnowballHand,1120,550,250,250);// Snowball in Hand
      }
      else if (TaskBarSelect == 2){
        Hud.image(FireBall,1120,550,250,250);// Fireball in Hand
        if (TaskBarSelect == 2){
            PImage frame = Fire.get(n);
            Hud.image(frame,1130,580,220,200);
            if (CloseSetting){
              n++;
            }
            if (n > 19) n = 0;
        }
      }
      Hud.pushMatrix();
        Hud.translate(20,110);
        Hud.fill(#DEBAAA);
        Hud.noStroke();
        Hud.beginShape();// Skin Arm
          Hud.vertex(1100,height+10);
          Hud.vertex(1108,642);
          Hud.vertex(1214,580);
          Hud.vertex(1364,660);
          Hud.vertex(1400,height+10);
        Hud.endShape(CLOSE);
        //Hud.line(1214,530, 1230,height+10);
      
        if (TaskBarSelect == 1){// Snowball
          Hud.fill(#FFFFFF);
        }
        else if (TaskBarSelect == 2){// Fireball
          Hud.fill(#670000);
        }
        Hud.noStroke();
        Hud.beginShape();// Shirt Arm
          Hud.vertex(1100,height+10);
          Hud.vertex(1105,745);
          Hud.vertex(1214,680);
          Hud.vertex(1378,758);
          Hud.vertex(1400,height+10);
        Hud.endShape(CLOSE);
      Hud.popMatrix();
    Hud.popMatrix();
  }
  else {
    Hud.pushMatrix();
      Hud.translate(ArmMoveX,ArmMoveY);
      Hud.fill(#DEBAAA);
      Hud.noStroke();
      Hud.beginShape();// Skin Arm
        Hud.vertex(1100,height+10);
        Hud.vertex(1108,642);
        Hud.vertex(1214,580);
        Hud.vertex(1364,660);
        Hud.vertex(1400,height+10);
      Hud.endShape(CLOSE);
      //Hud.line(1214,530, 1230,height+10);
        
      Hud.fill(#FFFFFF);
      Hud.noStroke();
      Hud.beginShape();// Shirt Arm
        Hud.vertex(1100,height+10);
        Hud.vertex(1105,745);
        Hud.vertex(1214,680);
        Hud.vertex(1378,758);
        Hud.vertex(1400,height+10);
      Hud.endShape(CLOSE);
    Hud.popMatrix();
  } 

  for (int i = 0; i < 9; i++){// Taskbar black background
    Hud.fill(0,0,0,200);
    Hud.noStroke();
    Hud.rect(360+(i*80),height-80,80,80);// Taskbar Select
  }
  for (int i = 0; i < 9; i++){
    Hud.fill(0,0,0,0);
    Hud.stroke(190);
    Hud.strokeWeight(5);
    Hud.rect(365+(i*80),height-75,70,70);
  }
  for (int i = 0; i < 9; i++){// Task Bar Inside
    Hud.fill(100);
    Hud.noStroke();
    Hud.rect(370+(i*80),height-70,60,60);
  }
  
  Hud.image(SnowballHand,450,830,60,60);// Snowball in Taskbar
  Hud.image(FireBall,530,830,60,60);// FireBall int Taskbar
  
  Hud.fill(0,0,0,0);
  Hud.stroke(#DE0000);
  Hud.strokeWeight(5);
  Hud.rect(365+(TaskBarSelect*80),height-75,70,70);// Red Selected Taskbar
 

  
  if (CloseSetting){
    if (ArmMove){// Arm Movement
      if (!ArmMoveXBack){
        ArmMoveX+=10;
      }
      else {
        ArmMoveX-=10;
      }    
      if (ArmMoveX >= 50){
        ArmMoveXBack = true;
      }
      else if (ArmMoveX <= -50){
        ArmMoveXBack = false;
      }
      
      if (!ArmMoveYBack){
        ArmMoveY+=10;
      }
      else {
        ArmMoveY-=10;
      } 
      if (ArmMoveY >= 40){
        ArmMoveYBack = true;
      }
      else if (ArmMoveY <= 0){
        ArmMoveYBack = false;
      }
    }
    else {
      ArmMoveX = 0;
      ArmMoveY = 0;
    }
    
    if (MovementUpDown || JumpVerticleMoveDown ){// Fake Jump     
      Timer++;
      EyeY = 50 + (-20*Timer + 0.5*(1)*Timer*Timer);
          
      if (EyeY > 50){
        EyeY = 50;
        Timer = 0;
        if (!MovementUpDown) JumpVerticleMoveDown = false;
      }    
    }
  }
  
}
//===================================================================================================

void Setting(){
  Hud.fill(0,0,0,120);
  Hud.noStroke();
  Hud.rect(0,0,width,height);
  
  Hud.fill(255);
  Hud.textAlign(CENTER,CENTER);
  Hud.textSize(40);
  Hud.text("Game Menu", width/2,150);
  
  Hud.stroke(20);
  Hud.strokeWeight(4);
  Hud.fill(BackToGame);// Back to Game
  Hud.rect(350,260,740,70);
    
  Hud.fill(Advancement);// Advancement
  Hud.rect(350,350,350,70);
  Hud.fill(Statistic);// Statistic
  Hud.rect(width/2+20,350,350,70);
  
  Hud.fill(Feedback);// Feedback
  Hud.rect(350,440,350,70);
  Hud.fill(ReportBugs);// Report Bugs
  Hud.rect(width/2+20,440,350,70);
  
  Hud.fill(OpenOptions);//  Options
  Hud.rect(350,530,350,70);
  Hud.fill(Lan);// Open to LAN
  Hud.rect(width/2+20,530,350,70);
  
  Hud.fill(QuitGame);
  Hud.rect(350,620,740,70);
  
  Hud.fill(255);
  Hud.textSize(30);
  Hud.textAlign(CENTER,CENTER);
  Hud.text("Back to Game", width/2,295);
  
  Hud.text("Advancements", 525,385);
  Hud.text("Statistics", width/2+195,385);
  
  Hud.text("Give Feedback", 525,475);
  Hud.text("Report Bugs", width/2+195,475);
  
  Hud.text("Options...", 525,565);
  Hud.text("Open to LAN", width/2+195,565);
  
  Hud.text("Save and Quit to Title", width/2,655);
  
  
  
  if (mouseX > 350 && mouseX < 1090 && mouseY > 260 && mouseY < 330){// Back to Game
    BackToGame = #88A6EB;
  }
  else {
    BackToGame = #828282;
  }
  if (mouseX > 350 && mouseX < 1090 && mouseY > 620 && mouseY < 690){// Save and Quit Game
    QuitGame = #88A6EB;
  }
  else {
    QuitGame = #828282;
  }
  //                                                                                               Left Rows
  if (mouseX > 350 && mouseX < 700 && mouseY > 350 && mouseY < 420){// Save and Quit Game
    Advancement = #88A6EB;
  }
  else {
    Advancement = #828282;
  }
  if (mouseX > 350 && mouseX < 700 && mouseY > 440 && mouseY < 510){// Save and Quit Game
    Feedback = #88A6EB;
  }
  else {
    Feedback = #828282;
  }
  if (mouseX > 350 && mouseX < 700 && mouseY > 530 && mouseY < 600){// Save and Quit Game
    OpenOptions = #88A6EB;
  }
  else {
    OpenOptions = #828282;
  }
  //                                                                                               Right Rows              
  if (mouseX > width/2+20 && mouseX < width/2+370 && mouseY > 350 && mouseY < 420){// Save and Quit Game
    Statistic = #88A6EB;
  }
  else {
    Statistic = #828282;
  }
  if (mouseX > width/2+20 && mouseX < width/2+370 && mouseY > 440 && mouseY < 510){// Save and Quit Game
    ReportBugs = #88A6EB;
  }
  else {
    ReportBugs = #828282;
  }
  if (mouseX > width/2+20 && mouseX < width/2+370 && mouseY > 530 && mouseY < 600){// Save and Quit Game
    Lan = #88A6EB;
  }
  else {
    Lan = #828282;
  }

}
//===================================================================================================

void Asteroids(){
  


}
