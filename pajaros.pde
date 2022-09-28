class Birds{
  PImage[] pajaro1 = new PImage[6];
  float x;
  float y;
  float vel;
  int pajarosprite;
  Birds(float tempx,float tempvel){
    x = tempx;
    vel = tempvel;
    for ( int i = 0; i < pajaro1.length; i++ ) {
    pajaro1[i] = loadImage( "pajaro"+i+".png" );
  }
  }
  void display(){
    volar();
    sprite();
    reset();
  }
  void sprite(){
     pajarosprite++;
    if( pajarosprite == pajaro1.length){
      pajarosprite = 0;
    }
    if(y >= 470){
      pajarosprite = 0;
      x = mouseX;
      
    }else{
      x = x + vel;
      pajarosprite++;
      if( pajarosprite == pajaro1.length){
      pajarosprite = 0;
    }
    }
  }
  void volar(){
    x = x + vel;
    y =  mouseY = constrain(mouseY,0,470);
    image(pajaro1[pajarosprite], x,y);
  }
  void reset(){
    if(x >= width){
      x = -70;
    }
    if(y >= 250){
      y = 100;
    }
  }
  }
  
