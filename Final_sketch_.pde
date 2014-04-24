//import controlP5.*;
import oscP5.*;
//import netP5.*;

//controlP5 cp5;
OscP5 oscp5;
//NetAddress myRemoteLocation;

Strike [] strike = new strike[strikeNum];
polkaDots [] polkadots = new polkadots [polkadotsNum];

void setup(){
  size(700,700);
  colorMode(HSB, 200,200,200);
  for(int i = 0; i<200; i++){
    for(int ps =0;ps<100; ps++){
     background(100,i,ps);
    }
  }
     for(int i=0;i<strikeNum;i++){
       strike[i] = new Strike();
     }
     for(int i=0;i<polkadotsNum;i++){
    polkadots[i] = new polkaDots(color(HSB,ALPHA),random(width,-width),random(height,-height),random(30,75));
    }
  //cp5 = new controlP5(this,100);
oscp5 = new OscP5(this, 7400); // reception of signals from max
  //oscP5.plug(this,"test");
}

void draw(){
    for(int i=0;i<strikeNum;i++){
    strike[i].pop();
    strike[i].draw();
    
    if(keyPressed = RIGHT){
      for(int i=0;polkadotsNum;i++){
      polkadots[i].pop();
      polkadots[i].draw();
      }
    }
    }
}
  
  
void oscEvent(OscMessage theOscMessage) { 
  float value = theOscMessage.get(0).floatValue();
  if(theOscMessage.checkAddrPattern("/t")){
    for(int i=0;i<strikeNum && polkadotsNum;i++){
      strike[i].pop(random(-value*value*50,value*value*50),random(-value*value*50,value*value*50));
      polkadots[i].pop(random(-value*value*50,value*value*50),random(-value*value*50,value*value*50));
    }
  }else if(theOscMessage.checkAddrPattern("/bDetect")){
    for(int i=0;i<strikeNum && polkadotsNum ;i++){
      strike[i].vol(value);
      polkadots[i].vol(value);
    }
  }
