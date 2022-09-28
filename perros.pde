class Dogs {
  PImage[] perri = new PImage[6];
PImage[] perro1 = new PImage[6];
  float x;
  float y;
  float vel;
  boolean shiba;
  int perrosprite;
 Dogs(float tempx,float tempvel){
  vel = tempvel;
  x = tempx;
  for ( int i = 0; i < perro1.length; i++ ) {
    perro1[i] = loadImage( "perro"+i+".png" );
  }
  for ( int i = 0; i < perro1.length; i++ ) {
    perri[i] = loadImage( "perri"+i+".png" );
  }
  }
  void display(){
    sprite();
    correr();
    reset();
  }
  void sprite(){
     
    perrosprite++;
    if( perrosprite == perro1.length){
      perrosprite = 0;
    }
    if( perrosprite == perri.length){
      perrosprite = 0;
    }
  }

  void correr(){
    x = x + vel;
    y = 455;
    image(perro1[perrosprite], x,y);
    if(key == 'p' ){
      shiba = true;
      }
    if(shiba){
      image(perri[perrosprite], x-50,y+5);
      }

}
void reset(){
  if(x >= 800){
    x = -50;
  }
}

}
