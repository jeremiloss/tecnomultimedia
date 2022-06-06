//Tore Jeremias 91406/1 comision 2
float x= width;
float y = height;
float tam = 150;
float cant= height;
float angulo;
float col;
float op;
float c1=255;


void setup() {
  size(800, 800);
 
}
void draw() {
  backgroundcustom();
  push();
  translate(width/2, height/2);
  for (int i=0; i<cant; i++) {
    scale(0.95);
    rotate(-radians(angulo));
    angulo= angulo + 0.001;
    ellipse(x*6, y*6, tam*4, tam*4);
    if (angulo>=100) {
      col = map(mouseX, 0, width, 0, 255);
      op = map(mouseY, 0, height, 0, 255);
      fill(150, col, 150, op);
      
    }
  }
  if (keyPressed) {
    if (key == 'z') {
      angulo= angulo+ 0.05;
    }
  }
  pop();
}
void mousePressed() {
  strokeWeight(10);
}
void mouseReleased() {
  strokeWeight(3);
}
void keyPressed() {
  if ( key == 'p' ) noLoop(); //pausa
  if(key == 's') loop(); //start
    if ( key == 'r' ) reseteo();
  }
