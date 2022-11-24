
class Core {

     String estado;
  Ui        ui;
  BackGround bg;
  Player p1;
  Enemy [] e1 = new Enemy[30];
  Core(){
    ui = new Ui();
    bg = new BackGround();
    p1 = new Player(160,460);
    for(int m = 0; m < e1.length; m++){
       e1[m] = new Enemy(800,445,random(1,5));
    }
    
     estado = "startup";
  }
  void display(){
    core.flow();
   core.script();
  }




  void flow(){
    if(estado.equals("startup")){
      bg.startbg();
      if(keyPressed){
        if(key == ' '){
          estado = "g";
     
        }
      }
    } else if(estado.equals("g")){
      core.script();
       bg.gamebg();
       p1.display();
       ui.display(122,528);
       pushStyle();
       textSize(25);
       textMode(CENTER);
       text(p1.killcount, 172,560);
       popStyle();
       for(int m = 0; m < e1.length; m++){
             e1[m].display();

    }
    }else if(estado.equals("w")){
      bg.endbg();
      if(estado.equals("w") && keyPressed){
        if(key == 'r'){
          for(int m = 0; m < e1.length; m++){
          e1[m].x=800;
        }
        p1.killcount = 0;
         p1.hitcount = 0;
         estado = "g";

        
      }
      }
    }else if(estado.equals("l")){
      bg.bendbg();
      if(estado.equals("l") && keyPressed){
        if(key == 'r'){
               p1.killcount = 0;
               p1.hitcount = 0;
               for(int m = 0; m < e1.length; m++){
          e1[m].x=800;
        }
        estado = "g";
      }
      }
    }
  }
  void script(){


///hit(perder vida)
for(int m = 0; m < e1.length; m++){
    if(e1[m].x < p1.x){
      p1.hitted = true;
      p1.stand = false;
      p1.muere = false;
      p1.pega= false;
      if(e1[m].x <= p1.x-100){
        e1[m].x=900;
        p1.hitcount= p1.hitcount + 1;
      }
     
    }
}
for(int m = 0; m < e1.length; m++){
    if(e1[m].x <= 212 && p1.pega==true){
      p1.killcount++;
      e1[m].x = 900;
    }
     if(p1.hitcount == 3){
        p1.hitted = false;
      p1.stand = false;
      p1.muere = true;
      p1.pega= false;
      e1[m].x=0;
      estado = "l";
      }
          if(p1.killcount == 45){
            p1.hitted = false;
      p1.stand = false;
      p1.muere = true;
      p1.pega= false;
      e1[m].x=0;
  estado = "w";
}
  
}
  }
}
