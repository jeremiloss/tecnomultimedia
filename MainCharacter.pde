 class Player {
  PImage[] idle = new PImage[6];
  PImage[] atk= new PImage[5];
  PImage[] hit = new PImage[4];
  PImage[] rip = new PImage[12];
  Boolean stand;
  Boolean pega;
  Boolean hitted;
  Boolean muere;
  float x;
  float y;
  int i;
  int ia;
  int ih;
  int ir;
  int hitcount;
  int killcount;
  Player(float _x, float _y) {
    x = _x;
    y = _y;
    for ( int i = 0; i < idle.length; i++ ) {
      idle[i] = loadImage( "idle"+i+".png" );
    }
    for ( int i = 0; i < atk.length; i++ ) {
      atk[i] = loadImage( "atk"+i+".png" );
    }
    for ( int i = 0; i < hit.length; i++ ) {
      hit[i] = loadImage( "hit"+i+".png" );
    }
    for ( int i = 0; i < rip.length; i++ ) {
      rip[i] = loadImage( "rip"+i+".png" );
    }
    stand = true;
    hitted = false;
    pega = false;
    muere = false;
  }
  void display() {
    idle();
    atk();
    hit();
    ded();
  }
  void idle() {
    if(stand){
      pega = false;
      hitted = false;
      muere =false;
    image(idle[i], x, y);
    if (frameCount%4==2) {
      i++;      
    }
    if ( i == idle.length) {
        i = 0;
      }
    }
  }
  void atk() {
    if (keyPressed && hitted == false) {
      if (key == 's') {
        pega = true;
        if(pega){
          stand = false;
          hitted = false;
          muere = false;
        image(atk[ia], x, y);
        if (frameCount%4==2) {

          ia++;
          
        }
        if ( ia == atk.length) {
            ia = 0;
          }
        } 
        }
      }else stand = true;
    }
    void hit(){
      if(hitted){
      image(hit[ih], x, y);
      
    if (frameCount%6==2) {
      ih++;      
    }
      }
    if ( ih == hit.length) {
        ih = 0;
      }
    }
    void ded(){
      if(muere){
      image(rip[ir],x,y);
       if (frameCount%7==2) {
      ir++;      
    }
      
    if ( ir == rip.length) {
        ir = 0;
      }
      }
    }
  }
