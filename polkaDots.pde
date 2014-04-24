
class polkaDots{
  color dotCol;
  int dotPosX;
  int dotPosY;
  int dotSize1;
  
  polkaDots(color dotcol,int posX,int posY,int dotSize1){
  }
    void pop(){
      noStroke();
      ellipse(dotPosX,dotPosY,dotSize1,dotSize1);
      fill(dotCol);
    }
}
