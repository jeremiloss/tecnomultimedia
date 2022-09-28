//Tore Jeremias 91406/1 comision 2
//Profesor: Matias Jauregui Lorda
//Fondo animado, interacciones con mouse y teclado. Al tocar la tecla p apareceran perros de la raza shiba. El cuervo se mueve en el eje Y siguiendo el movimiento del mouse.
//VIDEO DE YOUTUBE https://youtu.be/NeFPglYmc6I
Core core;
void setup() {
  size(800, 600);
  core = new Core();
  noCursor();
}

void draw() {
  core.display();
}
