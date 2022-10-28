class Enemy{
  PImage [] run = new PImage [6];
  float x;
  float y;
  float vel;
  int r;
  Enemy(float _x, float _y, float _vel){
    vel = _vel;
    x = _x;
    y = _y;
    for ( int i = 0; i < run.length; i++ ) {
    run[i] = loadImage( "run"+i+".png" );
  }
  }
  void display(){
    run();
  }
  void run(){
  //////scripteo
     image(run[r], x, y);
     x = x-vel;
 /////animacion
    if (frameCount%6==2) {
      r++;      
    }
    if ( r == run.length) {
        r = 0;
      }
  }

}
