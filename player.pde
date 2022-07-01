void player(){
  playerposx = constrain(playerposx,0,720);  
  image(player, playerposx, playerposy,80,80);
  
  if(keyPressed){
    if(key == 'a'){
    playerposx = playerposx - 5;
    }
    if(key == 'd'){
      playerposx = playerposx + 5;
    }
  }
  if(damage>=15){
    estado = "perdiste";
  }
}
