void Movement() {
  if (CloseSetting){
    if (KeyW && CanMoveForward() && CanMoveForward1() && CanMoveForward2() && CanMoveForward3() && CanMoveForward4()) {
      EyeX += cos(LeftRightRotate)*20;// Plus
      EyeZ += sin(LeftRightRotate)*20; 
      //if (MovementUpDown){
      //  EyeY+=20;
      //  if (EyeY >= 80) MovementUpDown = false;
      //}
      //else{
      //  EyeY-=20;
      //  if (EyeY <= 0) MovementUpDown = true;
      //}
    }
    
    if (KeyA && CanMoveLeft() && CanMoveLeft1() && CanMoveLeft2() && CanMoveLeft3() && CanMoveLeft4()) {
      EyeX += cos(LeftRightRotate - PI/2)*20;// Minus 90
      EyeZ += sin(LeftRightRotate - PI/2)*20;
    }
    
    if (KeyS && CanMoveBackward() && CanMoveBackward1() && CanMoveBackward2() && CanMoveBackward3() && CanMoveBackward4()) {
      EyeX -= cos(LeftRightRotate)*20;// Minus
      EyeZ -= sin(LeftRightRotate)*20; 
      //if (MovementUpDown){
      //  EyeY+=20;
      //  if (EyeY >= 80) MovementUpDown = false;
      //}
      //else{
      //  EyeY-=20;
      //  if (EyeY <= 0) MovementUpDown = true;
      //}
    }
  
    if (KeyD && CanMoveRight() && CanMoveRight1() && CanMoveRight2() && CanMoveRight3() && CanMoveRight4()) {
      EyeX += cos(LeftRightRotate + PI/2)*20;// Add 90
      EyeZ += sin(LeftRightRotate + PI/2)*20;
    } 
    
    if ((KeyW && CanMoveForward()) || (KeyA && CanMoveLeft()) || (KeyS && CanMoveBackward()) || (KeyD && CanMoveRight())){
      ArmMove = true;
    }
    else {
      ArmMove = false;
    }
    
    if (MovementUpDown){// Fake Jumping
      UpY+=10; 
      if (UpY >= 20){
        UpY-=10;
      }
    }
    else {
    
    }
    //FocusX = EyeX;
    //FocusY = EyeY;
    //FocusZ = EyeZ-100;
  
    FocusX = EyeX + cos(LeftRightRotate)*300;
    FocusY = EyeY + tan(UpDownRotate)*300;
    FocusZ = EyeZ + sin(LeftRightRotate)*300;
    
    if (mouseX >= 52 && mouseX <= width-52){
      LeftRightRotate = LeftRightRotate + (mouseX - pmouseX)*0.006;
    }
    if (mouseY >= 52 && mouseY <= height-52){
      UpDownRotate = UpDownRotate + (mouseY - pmouseY)*0.006;
    }
  
    if (UpDownRotate < -PI/2) {
      UpDownRotate = -PI/2+0.001;
    }
    if (UpDownRotate > PI/2) {
      UpDownRotate = PI/2-0.001;
    }
  
    if (mouseX > width-2) rbt.mouseMove(2, mouseY);
    
    if (mouseX < 2) rbt.mouseMove(width-2, mouseY);
    
    if (mouseY > height-2) rbt.mouseMove(mouseX, 2);
    
    if (mouseY < 2) rbt.mouseMove(mouseX, height-2);
  }
  
}
//===================================================================================================
boolean CanMoveForward(){    
  float ForwardY = EyeY;
  float ForwardX = EyeX + cos(LeftRightRotate)*170;
  float ForwardZ = EyeZ + sin(LeftRightRotate)*170;
  int MapX;
  int MapY; 
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27 ){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveForward1(){    
  float ForwardY = EyeY;
  float ForwardX = EyeX + cos(LeftRightRotate - radians(40))*170;
  float ForwardZ = EyeZ + sin(LeftRightRotate - radians(40))*170;
  int MapX;
  int MapY; 
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27 ){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveForward2(){    
  float ForwardY = EyeY;
  float ForwardX = EyeX + cos(LeftRightRotate - radians(20))*170;
  float ForwardZ = EyeZ + sin(LeftRightRotate - radians(20))*170;
  int MapX;
  int MapY; 
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27 ){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveForward3(){    
  float ForwardY = EyeY;
  float ForwardX = EyeX + cos(LeftRightRotate + radians(40))*170;
  float ForwardZ = EyeZ + sin(LeftRightRotate + radians(40))*170;
  int MapX;
  int MapY; 
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27 ){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveForward4(){    
  float ForwardY = EyeY;
  float ForwardX = EyeX + cos(LeftRightRotate + radians(20))*170;
  float ForwardZ = EyeZ + sin(LeftRightRotate + radians(20))*170;
  int MapX;
  int MapY; 
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27 ){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================


boolean CanMoveBackward(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI)*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI)*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveBackward1(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI - radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI - radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveBackward2(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI - radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI - radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveBackward3(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI + radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI + radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveBackward4(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI + radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI + radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================


boolean CanMoveLeft(){
  float ForwardX = EyeX + cos(LeftRightRotate - PI/2)*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate - PI/2)*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveLeft1(){
  float ForwardX = EyeX + cos(LeftRightRotate - PI/2 - radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate - PI/2 - radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveLeft2(){
  float ForwardX = EyeX + cos(LeftRightRotate - PI/2 - radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate - PI/2 - radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveLeft3(){
  float ForwardX = EyeX + cos(LeftRightRotate - PI/2 + radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate - PI/2 + radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveLeft4(){
  float ForwardX = EyeX + cos(LeftRightRotate - PI/2 + radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate - PI/2 + radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}
//===================================================================================================
boolean CanMoveRight(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI/2)*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI/2)*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}

//===================================================================================================
boolean CanMoveRight1(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI/2 - radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI/2 - radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}

//===================================================================================================
boolean CanMoveRight2(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI/2 - radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI/2 - radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}

//===================================================================================================
boolean CanMoveRight3(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI/2 + radians(20))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI/2 + radians(20))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}

//===================================================================================================
boolean CanMoveRight4(){
  float ForwardX = EyeX + cos(LeftRightRotate + PI/2 + radians(40))*170;
  float ForwardY = EyeY;
  float ForwardZ = EyeZ + sin(LeftRightRotate + PI/2 + radians(40))*170;
  int MapX;
  int MapY;
  
  MapX = (int) (ForwardX+4000)/ GridSize;
  MapY = (int) (ForwardZ+4000)/ GridSize;
  if (Map.get(MapX,MapY) == #B83DBA || Map.get(MapX,MapY) == #FFAEC8 || Map.get(MapX,MapY) == #FFF200 || Map.get(MapX,MapY) == #FF7F27){
    return false;
  }
  else {
    return true;
  }

}

//===================================================================================================

//void mouseDragged(){
//  RotateX = RotateX + (pmouseY - mouseY)*0.01;
//  RotateY = RotateY + (pmouseX - mouseX)*-0.01;

//}
//===================================================================================================
