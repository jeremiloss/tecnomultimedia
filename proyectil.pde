void tiro() {
  fill(230, 250, 91);
  strokeWeight(3);
  balax=playerposx;
  ellipse(balax+60, balay, 10, 20);
  
  
if (keyPressed){ 
    if(key == 'j' && estado.equals("jugar")){
    balaup = true;
    }
    }
      if (balaup == true) {
      balay = balay - 20;
  }
    if(balay<=0){
      balay = 720;
      balaup=false;
    }
    if(balay < enemyposy + 100 && balay > enemyposy - 100 && balax < enemyposx + 100 &&balax > enemyposx - 100){
      enemyposy=-10;
      enemyposx= random(1, 700);
      killcount++;
      
    }
    if(killcount>=15){
      estado = "ganaste";
    }
  }
