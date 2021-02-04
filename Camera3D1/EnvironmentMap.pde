void EnvironmentMap() {
  for (int x = 0; x < Map.width; x++) {
    for (int y = 0; y < Map.height; y++) {
      color C = Map.get(x, y);
      if (C != #000000){// Floor 
        //TexturedBlocks(x*GridSize-4000, 200, y*GridSize-4000, Ice, GridSize);// Floor
      }
      //if (C == #000000) {
      //  TexturedBlocksTop(x*GridSize-4000, 200, y*GridSize-4000, Snow, GridSize);// Snow Outside
      //}
      if (C == #B83DBA) {// Outside Wall
        for (int i = 0; i < 10; i++){
          TexturedBlocks(x*GridSize-4000, 200-100*i, y*GridSize-4000, DarkPrismarine, GridSize);// Wall                  
        }
      }
      if (C == #585858){
        for (int i = 0; i < 9; i++){
          TexturedBlocksOneSideRight(x*GridSize-4000+80, 100-100*i, y*GridSize-4000, NetherPortal, GridSize);// Right Portal
        }
        TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);
      }      
      if (C == #2C2C2C){
        for (int i = 0; i < 9; i++){
          TexturedBlocksOneSideLeft(x*GridSize-4000-80, 100-100*i, y*GridSize-4000, NetherPortal, GridSize);// Left Portal
        }
        TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);
      }   
      if (C == #FFAEC8){
        for (int i = 0; i < 5; i++){
          TexturedBlocks(x*GridSize-4000, 200-100*i, y*GridSize-4000, PrismarineBricks, GridSize);// Inner Short Wall
        }
        TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);// First Ceiling
      }
      if (C == #D01652 || C == #574545){
        TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);// First Ceiling
      }
      if (C == #88001B){
        TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);// First Ceiling
        TexturedBlocks(x*GridSize-4000, 200-100*11, y*GridSize-4000, SeaLantern, GridSize);// First Ceiling Gap
      }
      //if (C == #7D7D7D){
      //  TexturedBlocks(x*GridSize-4000, 200-100*10, y*GridSize-4000, WeatheredCopperBlock, GridSize);
      //}
      if (C == #3F48CC){
        TexturedBlocks(x*GridSize-4000, 200-100*12, y*GridSize-4000, WarpedPlanks, GridSize);// Second Ceiling 
      }
      if (C == #00A8F3){
        for (int i = 0; i < 13; i++){
          TexturedBlocks(x*GridSize-4000, 100-100*i, y*GridSize-4000, diamond, GridSize);// Diamond Piller
          TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, PrismarineBricks, GridSize);// Third Ceiling 
        }
      }
      if (C == #0ED145){
        for (int i = 0; i < 4; i++){
          TexturedBlocks(x*GridSize-4000, 100-100*i, y*GridSize-4000, StrippedWarpedStem, GridSize);// StrippedWarpedStem Piller
          TexturedBlocks(x*GridSize-4000, -700-100*i, y*GridSize-4000, StrippedWarpedStem, GridSize);// StrippedWarpedStem Piller
          TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, PrismarineBricks, GridSize);// Third Ceiling 
        }
      }
      if (C == #FFF200){
        for (int i = 0; i < 5; i++){
          TexturedBlocks(x*GridSize-4000, 100-100*i, y*GridSize-4000, Glass, GridSize);// Glass Piller
          TexturedBlocks(x*GridSize-4000, -600-100*i, y*GridSize-4000, Glass, GridSize);// Glass Piller
          TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, PrismarineBricks, GridSize);// Third Ceiling 
        }
      }
      if (C == #FF7F27){
        for (int i = 0; i < 2; i++){
          TexturedBlocks(x*GridSize-4000, 100-100*i, y*GridSize-4000, DarkPrismarine, GridSize);// shoter 4 pillers
          TexturedBlocks(x*GridSize-4000, -900-100*i, y*GridSize-4000, DarkPrismarine, GridSize);
          TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, PrismarineBricks, GridSize);// Third Ceiling 
        }
      }
      if (C == #8CFFFB){
        TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, PrismarineBricks, GridSize);// Third Ceiling 
      }
      if (C == #390000){
        TexturedBlocks(x*GridSize-4000, 200-100*14, y*GridSize-4000, SeaLantern, GridSize);// Cross SeaLanterns
      }
      if (C == #458886){
        TexturedBlocks(x*GridSize-4000, 200-100*14, y*GridSize-4000, WarpedNylium, GridSize);// Top Ceiling
      }
      if (C == #FFFFFF){
        TexturedBlocksBottom(x*GridSize-4000, 200-100*14, y*GridSize-4000, Ice, GridSize);// Top Ice
      }
      if (C == #C4FF0E){
        TexturedBlocks(x*GridSize-4000, 200-100*13, y*GridSize-4000, diamond, GridSize);// Top Diamind
      }
    }
  }
  
  
}
//===================================================================================================

void DrawFloor(int StartPosition, int EndPosition, int GridSize, int GridHeight, int Stroke) {
  pushMatrix();
  translate(0, 200);
  rotate(RotateX);
  rotate(RotateY);
  //strokeWeight(1);

  //for (int LineVar = StartPosition; LineVar <= 4000; LineVar+= GridSize) {
    int x = StartPosition;
    int z = StartPosition;
    while (z < EndPosition){
      TexturedBlocksTop(x, GridHeight, z, Ice, GridSize);
      x += GridSize;
      if (x >= EndPosition){
        z += GridSize;
        x = StartPosition;       
      }
    }
    //stroke(Stroke);
    //line(LineVar, GridHeight, StartPosition, LineVar, GridHeight, EndPosition);
    //line(StartPosition, GridHeight, LineVar, EndPosition, GridHeight, LineVar);
  //}

  popMatrix();
}
