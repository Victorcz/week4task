/**
     V strokes with multiple colours
     ChenZhuo 27/08/2012
     chenzhuo1989@gmail.com
  */


import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
float mov;      // color for filling the rectangle.

void setup() 
{
  size(400,400);
stroke(255);
String portName = "COM3";
  myPort = new Serial(this, portName, 9600);
}

void draw()
{

  if ( myPort.available() > 0) {  // If data is available,
    String val = myPort.readStringUntil('\n');         // read it and store it in val
    if(val != null){
      println(val);
      mov = float(val) / 151 * 100; // convert String to float value.     
    }
  }

background(255);  

int y = 80;
int x = 200;
int z = 320;
int a = 120;


int randomness = 100;
int q = 255;
int w = 255;
int e = 255;

for(y = 80; y <= 300; y = y + 1 ){
 if(y < 130){
     line(y,y,x,a+random(randomness)); stroke(val,val,val);}
else if((y >= 130) && (y < 300)){
   line(x,a+random(randomness),z,80);stroke(val,val,val);}
  
   
}}

