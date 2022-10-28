class BackGround{
  PImage fondo;
   PImage start;
  PImage end;
  PImage bend;
  BackGround(){
    fondo = loadImage("background.png");
    start = loadImage("startup.png");
        end = loadImage("end.png");
    bend = loadImage("badend.png");
  }

 void gamebg(){
   image(fondo,0,0);
 }
 void startbg(){
   image(start,0,0);
 }
 void endbg(){
   image(end,0,0);
 }
 void bendbg(){
   image(bend,0,0);
 }
}
