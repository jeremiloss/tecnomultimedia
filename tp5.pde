//Tore Jeremias 91406/1
//YOUTUBE:
//RECURSOS DE ITCH.IO: Gothicvania pack, Generic Character de brullov.
//MUSICA: Castlevania Rondo of Blood ost (juegazo:P)
Core core;
import processing.sound.*;
SoundFile gaming;
void setup(){
  size(800,600);
  core = new Core();
  gaming = new SoundFile(this, "gamin.mp3");
  gaming.play();
  gaming.amp(0.1);


}

void draw(){

  core.display();
}
