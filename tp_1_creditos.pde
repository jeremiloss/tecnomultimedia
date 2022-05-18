//Toré Jeremias 91406/1 Tp1
//esta animación contiene interacciones con el mouse si se arrastra y con la tecla Z
PImage skybox;
PImage islamain;
PImage uno;
PImage dos;
PImage tres;
PImage chrono;
PImage title;
PImage nu;
PImage frog;
PImage magus;
PImage end;
PImage plane;
PImage planeup;
PImage planedown;
PImage cat;
PImage luca;
PImage ayla;
PImage robo;
PImage atropos;
PFont font;
int x1 = 100; //chrono
int x2= 100;// titulo
int x3= 900;//frog
int txt1 = 0;
 int txt2 = -100;
 int txt3= -300;
 int txt4 = -200;
 int txt5 = -400;
 int txt6 = 1000;
 int txt7 = 1100;
 int y1 = -200; //the end
 float y2 = 310; //gatoflota
 int plane1= 900;
 int plane2= 1000;
 int plane3= -200;
boolean planey;
boolean planez;


void setup(){
  size(800, 800);
  background(0);
 font = createFont("ChronoType.ttf", 32);
 planey = false;
 planez = false;
  
  
 
}
void draw(){
    textFont(font);
    x1 = x1 + 1;  //Chrono movement
    if (x1 >= 1000){
    x1= -100;
   }
   x2 = x2 + 1; //Title 
   if (x2 == 260){
     x2 = 900;
   }   
  title = loadImage("title.png");
  islamain = loadImage("main.png");
   skybox = loadImage("skybox.png");
   uno = loadImage("uno.png");
   dos = loadImage("dos.png");
   tres = loadImage("tres.png");
   ayla = loadImage("ayla.png");
   cat = loadImage("cat.png");
   luca = loadImage("luca.png");
  imageMode(CENTER);
  image(skybox, 400, 400, 800, 800);
  image(islamain, 400, 400);
  image(uno, 239, 521);
  image(dos, 576, 550);
  image(tres, 600, 400);
  image(title, 400, x2);
  image(ayla, 615, 340);
  image(luca, 207, 494);
  chrono = loadImage("chrono.png");
  image(chrono, x1,100);
  if( x2>=900){
    frog = loadImage("frog.png");
    image(frog, x3, 400);
    x3 = 264;
  
  }
  image(cat, 616, y2);
y2 = y2 - 0.5;
 if(y2 <= 295){
   y2 = 310;
 }
  if(keyPressed){
    if(key=='z'){
      magus = loadImage("magus.png");
      image(magus, 420, 310);
    }
  }
  
  textSize(100);
  fill(0);
  text("PRODUCER", txt1, 700);
  textSize(90);
  text("Kazuhiko Aoki",txt1, 780);
  txt1 = txt1 + 5;
  if(txt1>=900){
    txt2 = txt2 + 5;
    text("Director", txt2, 700);
    text("Takashi Tokita", txt2, 750);
    text("Yoshinori Kitase", txt2, 800);
  }
 if(txt2 >= 900){
   txt3 = txt3 + 5;
   text("Graphic Design", txt3, 700);
   text("Akira Toriyama", txt3, 750);
 }
 if(txt3 >= 900){
   txt4= txt4+ 5;
   text("Music", 50 , txt4-50);
   text("Yasunori Mitsuda", 50, txt4);
 }
 if(txt4 >= 900){
   txt5 = txt5 + 5;
   text("Sound Engineer", 50, txt5-60);
   text("Eiji Nakamura", 50, txt5);
   
 }
 if(txt5 >= 900){
   txt6= txt6 - 6;
   text("Graphic Director", txt6, 700);
   text("Yasuhiko Kamata", txt6, 750);
   text("Masanori Hoshino", txt6, 800);
 }
 if(txt6<= -200){
   txt7 = txt7 - 6;
   text("Battle Program", txt7, 700);
   text("Toshio Endo", txt7, 750);
   text("Kiyoshi Yoshii", txt7, 800);
 }
 if(txt7<= - 500){
   end = loadImage("end.png");
   image(end, 400, y1);
   y1 = y1 + 5;
   if(y1 >= 100){
     y1 = 101;
   }
 }
if(txt2>=900){
  planey=true;
  if(planey){
    plane1 = plane1 - 5;
    plane= loadImage("plane.png");
    image(plane, plane1, 50);
  }
}
if(x1>=900 || txt3>=900){
  plane2 = plane2 - 8;
  planeup = loadImage("planeup.png");
  image(planeup, 600, plane2);
  planez = true;
  if(planez && txt4>=900){
    plane3 = plane3 + 4;
    planedown = loadImage("planedown.png");
    image(planedown, 20, plane3);
  }
}
if(y1==101){
  robo=loadImage("robo.png");
  atropos = loadImage("atropos.png");
  image(robo, 404, 445);
  image(atropos, 431, 449);
}

  

     
   
 
  
  

  
}
void mouseDragged(){ //NUUU
  nu = loadImage("nu.png");
  image(nu, mouseX, mouseY);
  
     
     

}
