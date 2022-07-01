void zombies(){
  enemyposy = enemyposy + 5;
  for(float i = 0; i<enemyspawner; i++){
    for(float x=0; x<enemyspawner; x++){
       
       image(enemy[zombisprite], enemyposx,enemyposy,100,100);
    }
      zombisprite++;
   if( zombisprite == enemy.length ){
    zombisprite = 0;
}
  }
  if(enemyposy>750){
    enemyposy=0;
    enemyposx=random(1,700);
    damage++;
  }
   if(killcount>=5){
    enemyposy= enemyposy+ 7;
  }
  if(killcount>= 10){
    enemyposy= enemyposy + 10;
  }
  
  }
