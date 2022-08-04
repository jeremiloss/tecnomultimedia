void mouseover(int posx, int posy, int ancho, int alto){
   if ( mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto){
    adentro= true;
     if(adentro){ 
       fill(255,0,0);
       
     } else if(adentro == false){
       fill(255);
     }
     }
}
