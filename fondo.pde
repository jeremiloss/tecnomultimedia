class Bg{
  PImage fondo;
  Bg(){
    fondo = loadImage("fondo.png");
  }
  void display(){
    image(fondo,0,0);
  }
}
