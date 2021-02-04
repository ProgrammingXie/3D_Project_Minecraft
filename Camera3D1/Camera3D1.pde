import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer MinecraftWetHands;

import java.awt.Robot;
Robot rbt;

PGraphics World;
PGraphics Hud;

//ArrayList<PImage> GifFire;
ArrayList<PImage> Fire;
ArrayList<GameObject> Objects;
ArrayList<Asteroids> GameAsteroids;
int n = 0;

PImage Title;
PImage Background1;
PImage Background2;
PImage Background3;
PImage Background4;
PImage Background5;
PImage WorldSelect;

PImage Map;
PImage MapInside;
PImage MapOutside;
PImage diamond;
PImage Glass;
PImage DarkPrismarine;
PImage PrismarineBricks;
PImage WeatheredCopperBlock;
PImage WarpedStem;
PImage WarpedPlanks;
PImage SeaLantern;
PImage StrippedWarpedStem;
PImage Ice;
PImage WarpedNylium;
PImage Snow;
PImage SnowballHand;
PImage FireBall;
PImage CryingObsidian;
PImage NetherPortal;

color White = #FFFFFF;

float RotateX = 0;
float RotateY = 0;

int StartPosition = -2000;
int EndPosition = 2000;
int GridSize = 100;
int GridHeight = 800;

float LeftRightRotate = 3*PI/2;
float UpDownRotate = 0;

float EyeX = width/2;
float EyeY = height/2;
float EyeZ = height/2;
float FocusX = EyeX;
float FocusY = EyeY;
float FocusZ = EyeZ;
float UpX = 0;
float UpY = 1;
float UpZ= 0;

int GridSizeBlocks = 100;

boolean KeyW = false;
boolean KeyS = false;
boolean KeyA = false;
boolean KeyD = false;
boolean CanMoveForward = true;

int ShootingDelay = 0;
boolean Shooting = false;

int TaskBarSelect = 0;

boolean InsideMap = true;
//boolean FirstPerson = true;
int ThirdPersonZ = 0;
int ThirdPersonY = 0;
boolean ArmMove = false;
boolean ArmMoveXBack = false;
boolean ArmMoveYBack = false;
int ArmMoveX = 0;
int ArmMoveY = 0;
boolean MovementUpDown = false;
boolean JumpVerticleMoveDown = false;
int Timer = 0;

int BulletType = 0;

int BackgroundImage = (int) random(0,5); 
//int BackgroundImage = 2; 
int SinglePlayerFill = #626262;// #88A6EB
int MultiPlayerFill = #626262;// #88A6EB
int RealmFill = #626262;// #88A6EB
int Quit = #626262;// #88A6EB
int Options = #626262;// #88A6EB

boolean MapSelected = false;
int MapSelectedDown = 0;
int PlaySelectedWorld = #828282;// #88A6EB
int Cancel = #828282;// #88A6EB
int BackToGame = #828282;// #88A6EB
int Advancement = #828282;// #88A6EB
int Statistic = #828282;// #88A6EB
int Feedback = #828282;// #88A6EB
int ReportBugs = #828282;// #88A6EB
int OpenOptions = #828282;// #88A6EB
int Lan = #828282;// #88A6EB
int QuitGame = #828282;// #88A6EB
boolean CloseSetting = true;

int WorldBackgroundFade = 255;

boolean AddAsteroids = false;



int GameMode;
final int Intro = 0;
final int Game = 1;
final int GameLoading = 2;
final int GameOver = 3;


void setup() {
  //size(displayWidth,displayHeight,P3D);
  //fullScreen(P2D);
  size(1440,900,P2D);
  frameRate(100);
  noCursor();
  //if (frameCount <= 1) rbt.mouseMove(width/2,height/2);  
  World = createGraphics(width,height,P3D);
  Hud = createGraphics(width,height,P2D);
  
  //GifFire = new ArrayList<PImage>();
  Fire = new ArrayList<PImage>();
  Objects = new ArrayList<GameObject>();
  GameAsteroids = new ArrayList<Asteroids>();
  //for (int i = 0; i <= 57; i++){
  //  String Zero= "";
  //  if (i<10){
  //    Zero= "0";
  //  }
  //  GifFire.add(loadImage("frame_" + (Zero+i) + "_delay-0.07s.gif"));
  //}
  for (int i = 0; i <= 19; i++){
    String Zero= "";
    if (i<10){
      Zero= "0";
    }
    Fire.add(loadImage("frame_" + (Zero+i) + "_delay-0.02s.gif"));
  }
  
  Title = loadImage("Title.png");
  Background1 = loadImage("Background1.jpg");
  Background2 = loadImage("Background2.jpg");
  Background3 = loadImage("Background3.jpg");
  Background4 = loadImage("Background4.png");
  Background5 = loadImage("Background5.jpg");
  WorldSelect = loadImage("WorldSelect.png");
  
  Map = loadImage("map.png");
  diamond = loadImage("diamond.png");
  Glass = loadImage("Glass.png");
  DarkPrismarine = loadImage("DarkPrismarine.png");
  PrismarineBricks = loadImage("PrismarineBricks.png");
  WeatheredCopperBlock = loadImage("WeatheredCopperBlock.png");
  WarpedStem = loadImage("WarpedStem.png");
  WarpedPlanks = loadImage("WarpedPlanks.png");
  SeaLantern = loadImage("SeaLantern.gif");
  StrippedWarpedStem = loadImage("StrippedWarpedStem.png");
  Ice = loadImage("Ice.png");
  WarpedNylium =  loadImage("WarpedNylium.png");
  Snow = loadImage("Snow.png");
  MapInside = loadImage("mapInside.png");
  MapOutside = loadImage("mapOutside.png");
  SnowballHand = loadImage("SnowballHand.png");
  FireBall = loadImage("FireBall.png");
  CryingObsidian = loadImage("CryingObsidian.png");
  NetherPortal = loadImage("NetherPortal.jpg");
  World.textureMode(NORMAL);
  
  minim = new Minim(this);
  MinecraftWetHands = minim.loadFile("MinecraftWetHands.mp3");

  try {
    rbt = new Robot();
  }
  catch (Exception e) {
    e.printStackTrace();
  }
  frameRate(100);// For School Computer
  
  MinecraftWetHands.play();
  
  GameMode = Intro;
  //GameMode = Game;
  //GameMode = GameLoading;
  
  //for (int i = 0; i < 100; i++){
  //  Objects.add(new Asteroids());
  //}
  
}
//===================================================================================================
 
void draw() {
  
  if (GameMode == Intro){
    Intro();
    textAlign(CORNER,CORNER);
    fill(#00B474);
    textSize(18);
    text("fps:",10,23);
    text(frameRate,40,24);
  }
  else if (GameMode == Game){
    Game();
  }
  else if (GameMode == GameLoading){
    GameLoading();
    textAlign(CORNER,CORNER);
    fill(#00B474);
    textSize(18);
    text("fps:",10,23);
    text(frameRate,40,24);
  }
  else if (GameMode == GameOver){
    GameOver(); 
    textAlign(CORNER,CORNER);
    fill(#00B474);
    textSize(18);
    text("fps:",10,23);
    text(frameRate,40,24);
  }
  else {
    println("WHAT IS HAPPENING!!!!!!!!!");
  }
  
  if (!MinecraftWetHands.isPlaying()){
    MinecraftWetHands.rewind();
    MinecraftWetHands.play();
  }
  
  
  //println(UpDownRotate);
  //println(EyeY);
  //println(height);
  //println(InsideMap);
  //println(Objects.size());
  //println(FirstPerson);
  //println(ArmMove);
  //println(MovementUpDown);
  //println(BulletType);
  //println(TaskBarSelect);  
  //println(mouseX,mouseY);
  //println(Objects.size());
  
}
//===================================================================================================
