void GameLoading(){
  cursor();
  imageMode(CENTER);
  image(WorldSelect,width/2,height/2);
  
  fill(0,0,0,170);
  noStroke();
  rect(0,248, width,540);
  
  fill(255);
  textAlign(CENTER,CENTER);
  textSize(40);
  text("Select World", width/2,215);
  
  if (MapSelected){
    fill(0,0,0,0);
    stroke(170);
    strokeWeight(4);
    rect(316,316+MapSelectedDown,808,120);
  }
  
  fill(255);
  textSize(27);
  textAlign(CORNER,CORNER);
  text("Programming 12 World", 328,354);
  text("Survival", 328,474);
  text("Test World", 328,594);
  fill(180);
  text("Programming 12 World (31/1/21)", 328,384);
  text("Survival (14/7/17)", 328,504);
  text("Test World (31/1/21)", 328,624);
  textSize(20);
  text("Creative Mode, Commands, Version 1.16.4", 328,414);
  text("Creative Mode, Commands, Version 1.14", 328,534);
  text("Creative Mode, Commands, Version 1.8.6", 328,654);
  
  stroke(0);
  strokeWeight(4);
  fill(PlaySelectedWorld);
  rect(width/2-400,810,350,60,3);
  fill(Cancel);
  rect(width/2+50,810,350,60,3);
  
  fill(255);
  textAlign(CENTER,CENTER);
  textSize(28);
  text("Play Selected World", width/2-225,838);
  text("Cancel", width/2+225,838);
  
  if (mouseX > width/2-400 && mouseX < width/2-50 && mouseY > 810 && mouseY < 870){
    PlaySelectedWorld = #88A6EB;
  }
  else {
    PlaySelectedWorld = #828282;
  }  
  if (mouseX > width/2+50 && mouseX < width/2+400 && mouseY > 810 && mouseY < 870){
    Cancel = #88A6EB;
  }
  else {
    Cancel = #828282;
  }



}
