class Ui{
PImage k;
int x,y;
Ui(){
  k = loadImage("kills.png");
  
}
void display(int _x, int _y){
  x = _x;
  y = _y;
  push();
  imageMode(CENTER);
  image(k,x,y,100,100);
  pop();
}
}
