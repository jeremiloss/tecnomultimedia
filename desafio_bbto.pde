
void setup() {
  size(600, 600);
}
void draw() {
  background(255, 5, 5);
 for (int i = 0; i<10; i = i+1){
   float x= random(600);
   float y= random(600);
   float col= random(255);
   fill(0);
   noStroke();
   ellipse( 300, 300, x, y);
   fill(255);
   ellipse( 300, 300, x/2, y/2);
   textSize(30);
   fill(5, col, col);
   text("Jeremias", 0, 580);

 }
 
}
