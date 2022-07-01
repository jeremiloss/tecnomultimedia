//Tore Jeremias 91406/1 comision 2
//link del video explicativo: https://youtu.be/26lGXxkaBoQ
//variables globales--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
String estado;
PImage kills;
int killcount = 0;
int damage = 0;
PImage menu;
PImage player;
PImage[] enemy = new PImage[16];
int zombisprite = 0;
PImage mapa;
PImage gameover;
PImage win;
PImage credits;
float playerposx = 400;
float playerposy = 700;
float enemyposy = 0;
float enemyposx = 400;
int enemyspawner = 1;
float balax;
float balay = 720;
boolean balaup;
void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  textSize(30);
  estado = "startup";
  menu = loadImage("titulo.jpg");
  player = loadImage("player.png");
  mapa = loadImage("mapa.png");
  kills = loadImage("kills.png");
  win = loadImage("winscreen.png");
  gameover = loadImage("gameover.png");
  credits = loadImage("credits.png");
  for ( int i = 0; i < enemy.length; i++ ) {
    enemy[i] = loadImage( "enemy"+i+".png" );
  }
  balaup = false;
  killcount = 0;
  damage = 0;
}
void draw() {

  background(0);
  if (estado.equals("startup")) {
    image(menu, 0, 0);
    text("Presiona espacio para iniciar!", width/2, height/2+20);
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("mainmenu")) {
    image(menu, 0, 0);
    rect(width/2+170, height/2, 200, 60);
    rect(width/2+190, height/2+100, 190, 60);
    rect(width/2+190, height/2+200, 190, 60);
    fill(255, 55, 55);
    text("JUGAR", width/2+170+100, height/2+25);
    text("TUTORIAL", width/2+190+100, height/2+100+25);
    text("CREDITOS", width/2+190+100, height/2+200+25);
    fill(255);
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("tutorial")) {
    image(menu, 0, 0);
    pushStyle();
    stroke(10);
    fill(255, 55, 55);
    text("Con A y D te moves", 400, 400);
    text("Con el click izquierdo disparas", 400, 450);
    text("Con la tecla R se reinicia el juego", 400, 500);
    popStyle();
    push();
    fill(0);
    text("Mata 15 zombies para ganar", 400, 300);
    text("Si 15 zombies se escapan perdes", 400, 350);
    pop();
    pushStyle();
    fill(0);
    textSize(20);
    text("Cuidado que los zombies se hacen mas rapidos cuando los matas", 400, 600);
    popStyle();
  } else if (estado.equals("jugar")) {
    image(mapa, 0, 0);
    image(kills, -30, -50, 200, 200);
    tiro();
    player();
    zombies();
    killcount();
  } else if (estado.equals("perdiste")) {
    image(gameover, 0, 0);
    rect(width/2-150, height/2, 300, 60);
    pushStyle();
    fill(255, 55, 55);
    text("Volver al Menu", width/2, height/2+25);
    popStyle();
  } else if (estado.equals("ganaste")) {
    image(win, 0, 0);
    rect(width/2-150, height/2, 300, 60);
    pushStyle();
    fill(255, 55, 55);
    text("Volver al Menu", width/2, height/2+25);
    popStyle();
  } else if (estado.equals("creditos")) {
    image(credits, 0, 0);
  }
}

void keyPressed() {
  if (key == ' '&& estado.equals("startup")) {
    estado = "mainmenu";
  }
  if (key == 'r') {
    reinicio();
  }
}
void mousePressed() {
  if ( mouseX > width/2+170 && mouseX < width/2+170+190 && mouseY > height/2 && mouseY < height/2+60 && estado.equals("mainmenu")) {
    estado = "jugar";
  }
  if ( mouseX > width/2+190 && mouseX < width/2+190+190 && mouseY >  height/2+100 && mouseY <  height/2+100+60 && estado.equals("mainmenu")) {
    estado="tutorial";
  }
  if ( mouseX > width/2+190 && mouseX < width/2+190+190 && mouseY > height/2+200 && mouseY < height/2+200+60 && estado.equals("mainmenu")) {
    estado="creditos";
  }
  if ( mouseX > width/2-150 && mouseX < width/2-150+300 && mouseY > height/2 && mouseY < height/2+60 && estado.equals("ganaste")) {
    estado = "mainmenu";
    reinicio();
  }
  if ( mouseX > width/2-150 && mouseX < width/2-150+300 && mouseY > height/2 && mouseY < height/2+60 && estado.equals("perdiste")) {
    estado = "mainmenu";
    reinicio();
  }
}
void mouseClicked() {
  if (estado.equals("jugar")) {
    balaup = true;
    tiro();
  }
}
