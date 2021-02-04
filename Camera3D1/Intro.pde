void Intro(){  
  //background(255);
  imageMode(CENTER);
  cursor();
  
  if (BackgroundImage == 0){
    image(Background1,width/2,height/2);
  }
  else if (BackgroundImage == 1){
    image(Background2,width/2,height/2);
  }  
  else if (BackgroundImage == 2){
    image(Background3,width/2,height/2);
  }
  else if (BackgroundImage == 3){
    image(Background4,width/2,height/2);
  }
  else if (BackgroundImage == 4){
    image(Background5,width/2,height/2);
  }

  //image(Title,width/2,height/2-59,1000,175);// ratio 5.3 : 1
   
  pushMatrix();
    if (BackgroundImage == 0 || BackgroundImage == 1 || BackgroundImage == 3 || BackgroundImage == 4){
      translate(0,-200);
    }
    else {
      translate(0,0);
    }
    fill(0);
    noStroke();
    beginShape();// Title background Black
      vertex(261,304);
      vertex(308,304);
      vertex(331,336);
      vertex(334,327);
      vertex(347,327);
      vertex(352,304);
      //vertex(251,304);
      vertex(401,304);
      vertex(404,309);
      vertex(405,304);
      vertex(454,304);
      vertex(456,309);
      vertex(457,304);
      vertex(507,304);
      vertex(519,333);
      vertex(523,304);
      vertex(573,304);
      vertex(574,310);
      vertex(575,304);
      vertex(679,304);
      vertex(681,314);    
      vertex(682,304);
      vertex(786,304);
      vertex(786,312);
      vertex(787,304);
      vertex(891,304);
      vertex(892,309);
      vertex(894,304);
      vertex(997,304);
      vertex(998,309);
      vertex(1001,304);
      vertex(1103,304);
      vertex(1104,308);
      vertex(1108,304);
      vertex(1209,304);
      vertex(1219,334);
      vertex(1198,360);
      vertex(1220,436);
      vertex(1180,478);
      vertex(1132,478);
      vertex(1113,397);
      vertex(1091,429);
      vertex(1075,429);
      vertex(1077,436);
      vertex(1049,478);
      vertex(999,478);
      vertex(999,473);
      vertex(996,478);
      vertex(946,478);
      vertex(946,472);
      vertex(943,478);
      vertex(893,478);
      vertex(893,469);
      vertex(890,478);
      vertex(840,478);
      vertex(840,469);
      vertex(837,478);
      vertex(787,478);
      vertex(787,465);
      vertex(784,478);
      vertex(681,478);
      vertex(681,467);
      vertex(679,478);
      vertex(576,478);
      vertex(574,473);
      vertex(574,478);
      vertex(524,478);
      vertex(512,452);
      vertex(508,478);
      vertex(460,478);
      vertex(457,473);
      vertex(455,478);
      vertex(406,478); 
      vertex(403,474);
      vertex(403,478);
      vertex(354,478);
      vertex(333,454);
      vertex(321,454);
      vertex(317,449);
      vertex(310,478);
      vertex(263,478);
      vertex(220,437);    
    endShape(CLOSE);
    //image(Title,width/2,height/2-59,1000,175);// ratio 5.3 : 1
    
    fill(#282729);
    noStroke();
    quad(228,434, 269,434, 302,471, 264,471);// Title M Shadow
    fill(#323132);
    quad(291,407, 319,407, 346,446, 323,446);
    fill(#282729);
    quad(327,434, 369,434, 395,471, 358,471);
    
    quad(384,434, 425,434, 447,471, 411,471);// Title i Shadow  
    quad(512,434, 554,434, 566,471, 528,471);// Title N Shadow
    quad(440,434, 482,434, 500,471, 462,471);
    
    quad(569,434, 668,434, 673,471, 582,471);// Title E Shadow
    
    quad(683,434, 781,434, 777,471, 688,471);// Title C Shadow
    
    quad(797,434, 839,434, 831,471, 794,471);// Title R Shadow
    quad(854,434, 897,434, 884,471, 846,471);
    
    quad(969,434, 1011,434, 991,471, 952,471);// Title A Shado
    quad(912,434, 953,434, 938,471, 900,471);
    
    quad(1026,434, 1069,434, 1043,471, 1006,471);//Title R Shadow
    
    quad(1169,434, 1212,434, 1176,471, 1139,471);// Title F Shadow
      
    fill(#A9A09D);
    noStroke();
    beginShape();// Title M
      vertex(264,311);
      vertex(302,311);
      vertex(297,333);
      vertex(310,334);
      vertex(304,356);
      vertex(332,356);
      vertex(338,334);
      vertex(351,334);
      vertex(357,311);
      vertex(395,311);
      vertex(369,434);
      vertex(327,434);
      vertex(339,383);
      vertex(325,383);
      vertex(319,407);
      vertex(291,407);
      vertex(298,383);
      vertex(284,383);
      vertex(269,434);
      vertex(228,434);
    endShape(CLOSE);
    
    quad(409,311, 448,311, 425,434, 384,434);// Title i
    
    beginShape();// Title N
      vertex(462,311);
      vertex(501,311);
      vertex(498,333);
      vertex(511,333);
      vertex(508,358);
      vertex(522,358);
      vertex(529,311);
      vertex(567,311);
      vertex(554,434);
      vertex(512,434);
      vertex(517,395);
      vertex(503,395);
      vertex(506,370);
      vertex(492,370);
      vertex(482,434);
      vertex(440,434);
    endShape(CLOSE);
    
    beginShape();// Title E
      vertex(581,311);
      vertex(673,311);
      vertex(672,333);
      vertex(618,333);
      vertex(617,357);
      vertex(671,357);
      vertex(670,382);
      vertex(615,382);
      vertex(613,407);
      vertex(669,407);
      vertex(668,434);
      vertex(569,434);
    endShape(CLOSE);
    
    beginShape();// Title C
      vertex(687,311);
      vertex(779,311);
      vertex(779,333);
      vertex(726,333);
      vertex(725,407);
      vertex(781,407);
      vertex(781,434);
      vertex(683,434);
    endShape(CLOSE);
    
    beginShape();// Title R
      vertex(793,311);
      vertex(885,311);
      vertex(889,357);
      vertex(876,357);
      vertex(877,369);
      vertex(890,369);
      vertex(897,434);
      vertex(854,434);
      vertex(850,382);
      vertex(836,382);
      vertex(839,434);
      vertex(797,434);
    endShape(CLOSE);
  
    beginShape();// Title A
      vertex(899,311);
      vertex(991,311);
      vertex(1011,434);
      vertex(969,434);
      vertex(964,394);
      vertex(949,394);
      vertex(953,434);
      vertex(912,434);
    endShape(CLOSE);
    
    beginShape();// Title F
      vertex(1006,311);
      vertex(1098,311);
      vertex(1103,333);
      vertex(1049,333);
      vertex(1053,356);
      vertex(1109,356);
      vertex(1114,384);
      vertex(1059,384);
      vertex(1069,434);
      vertex(1026,434);
    endShape();
    
    beginShape();// Title F
      vertex(1112,311);
      vertex(1204,311);
      vertex(1211,333);
      vertex(1184,333);  
      vertex(1212,434);
      vertex(1169,434);
      vertex(1143,333);
      vertex(1117,332);
    endShape(CLOSE);
  
    fill(0);
    quad(833,333, 847,333, 849,357, 834,357);// Title R Middle Black
    
    quad(924,330, 941,330, 942,345, 925,345);// Title A Middle Black
    quad(956,330, 973,330, 975,345, 957,345);
    beginShape();
      vertex(941,344);
      vertex(959,344);
      vertex(959,352);
      vertex(968,352);
      vertex(971,375);
      vertex(961,375);
      vertex(960,367);
      vertex(946,366);
      vertex(946,375);
      vertex(937,375);
      vertex(934,352);
      vertex(942,352);
    endShape(CLOSE);
  popMatrix();
  
  fill(0);
  textAlign(CORNER,CORNER);
  textSize(24);
  text("Minecraft Programming 12 Edition", 10,890);
  
  stroke(0);
  strokeWeight(4);
  fill(SinglePlayerFill);
  rect(width/2-300,500,600,60,3);
  fill(MultiPlayerFill);
  rect(width/2-300,570,600,60,3);
  fill(RealmFill);
  rect(width/2-300,640,600,60,3);
  
  fill(Options);
  rect(width/2-300,765,290,60,3);
  fill(Quit);
  rect(width/2+10,765,290,60,3);
  
  fill(255);
  textAlign(CENTER,CENTER);
  textSize(35);
  text("Singleplayer", width/2,525);
  text("Multiplayer", width/2,595);
  text("Minecraft Realms", width/2,665);
  //textSize(30);
  text("Options", width/2-155,790);
  text("Quit Game", width/2+160,790);
 
  
  if (mouseX > width/2-300 && mouseX < width/2+300 && mouseY > 500 && mouseY < 560){
    SinglePlayerFill = #88A6EB;
  }
  else {
    SinglePlayerFill = #828282;
  }
  if (mouseX > width/2-300 && mouseX < width/2+300 && mouseY > 570 && mouseY < 630){
    MultiPlayerFill = #88A6EB;
  }
  else {
    MultiPlayerFill = #828282;
  }
  if (mouseX > width/2-300 && mouseX < width/2+300 && mouseY > 640 && mouseY < 700){
    RealmFill = #88A6EB;
  }
  else {
    RealmFill = #828282;
  }
  if (mouseX > width/2-300 && mouseX < width/2-10 && mouseY > 765 && mouseY < 835){
    Options = #88A6EB;
  }
  else {
    Options = #828282;
  }
  if (mouseX > width/2+10 && mouseX < width/2+300 && mouseY > 765 && mouseY < 835){
    Quit = #88A6EB;
  }
  else {
    Quit = #828282;
  }
  
  
  
  

}
