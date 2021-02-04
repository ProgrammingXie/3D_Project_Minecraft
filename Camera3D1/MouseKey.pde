void keyPressed() {
  if (GameMode == Game){
    if (CloseSetting){
      if (key == 'w' || key == 'W') KeyW = true;
      if (key == 'a' || key == 'A') KeyA = true;
      if (key == 's' || key == 'S') KeyS = true;
      if (key == 'd' || key == 'D') KeyD = true;
      //if (key == 't' || key == 'T'){
      //  if (FirstPerson){
      //    ThirdPersonZ = -260;
      //    ThirdPersonY = -120;
      //    FirstPerson = false;
      //  }
      //  else {
      //    ThirdPersonZ = 0;
      //    ThirdPersonY = 0;
      //    FirstPerson = true;
      //  }
      //}
      if (key == ' '){
        MovementUpDown = true;
        JumpVerticleMoveDown = true;
      }
    }
  }
}
//===================================================================================================

void keyReleased() {
  if (GameMode == Game){
      if (CloseSetting){
      if (key == 'w' || key == 'W') KeyW = false;
      if (key == 'a' || key == 'A') KeyA = false;
      if (key == 's' || key == 'S') KeyS = false;
      if (key == 'd' || key == 'D') KeyD = false;
      if (key == ' '){
        MovementUpDown = false;
      }
    }
    
    if (key == '`' || key == '~'){
      if (CloseSetting){
        CloseSetting = false;
      }
      else {
        CloseSetting = true;
        KeyW = false;
        KeyA = false;
        KeyS = false;
        KeyD = false;
        MovementUpDown = false;
      }
    }   
  }
}
//===================================================================================================

void mouseWheel(MouseEvent event){
  if (GameMode == Game && CloseSetting){
    float e = event.getCount();
    if (GameMode==Game){
      if (e>0){
        TaskBarSelect++;
        if (TaskBarSelect > 8) TaskBarSelect = 0;
      }
      if (e<0){
        TaskBarSelect--;
        if (TaskBarSelect < 0) TaskBarSelect = 8;
      }
    }
  }
}
//===================================================================================================

void mouseReleased(){
  if (GameMode == Intro){
    if (mouseX > width/2-300 && mouseX < width/2+300 && mouseY > 500 && mouseY < 560){
      GameMode = GameLoading;
    }
    
    if (mouseX > width/2+10 && mouseX < width/2+300  && mouseY > 765 && mouseY < 835){
      exit();
    }
  }
  else if (GameMode == GameLoading){
    if (mouseX > 316 && mouseX < 316+808 && mouseY > 316 && mouseY < 316+120){// double click
      if (MapSelected){
        GameMode = Game;
      }
      else if (MapSelected == false){
        MapSelected = true;
      }
    }
    
    if (mouseX > width/2-400 && mouseX < width/2-50 && mouseY > 810 && mouseY < 870){// play world
      if (MapSelected){
        GameMode = Game;
      }
    }
    
    if (mouseX > width/2+50 && mouseX < width/2+400 && mouseY > 810 && mouseY < 870){// cancel
      if (MapSelected){
        MapSelected = false;
      }
      else {
        BackgroundImage = (int) random(0,5); 
        GameMode = Intro;
      }    
    }  
  }
  else if (GameMode == Game){
    if (!CloseSetting){
      if (mouseX > 350 && mouseX < 1090 && mouseY > 260 && mouseY < 330){// Back to Game
        CloseSetting = true;
      }
      
      if (mouseX > 350 && mouseX < 1090 && mouseY > 620 && mouseY < 690){// Save and Quit
        CloseSetting = true;
        KeyW = false;
        KeyA = false;
        KeyS = false;
        KeyD = false;
        MovementUpDown = false;
        MapSelected = false;
        EyeY = 50;
        Timer = 0;
        CloseSetting = true;
        JumpVerticleMoveDown = false;
        AddAsteroids = true;
        //for (int i = 0; i < Objects.size(); i++){
        //  Objects.remove(i);
        //}
        GameMode = GameLoading;
      }
    }
  }
}
