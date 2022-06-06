
void reseteo(){
 println("reseteando :D");
  angulo = -PI/2;
}

void backgroundcustom(){
 float d = dist(width/3, height/3, mouseX, mouseY);
  background(d*angulo,255,d);
}
