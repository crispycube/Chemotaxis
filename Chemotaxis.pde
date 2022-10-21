Atom [] atoms;
boolean follow = false;
void setup(){
  size(500, 500);
  background(0);
  atoms = new Atom[70];
  for(int i = 0; i < atoms.length; i++){
    if(i < 10){
      atoms[i] = new Atom("Br", color(255, 255, 255));
    } else if(i < 20){
      atoms[i] = new Atom("I", color(255, 0, 0));
    } else if(i < 30){
      atoms[i] = new Atom("N", color(0, 255, 0));
    } else if(i < 40){
      atoms[i] = new Atom("Cl", color(0, 0, 255));
    } else if(i < 50){
      atoms[i] = new Atom("H", color(255, 255, 0));
    } else if(i < 60){
      atoms[i] = new Atom("O", color(0, 255, 255));
    } else {
      atoms[i] = new Atom("F", color(255, 0, 255));
    }
  }
}

void draw(){
  background(0);
  for(int i = 0; i < atoms.length; i++){
    atoms[i].move();
    atoms[i].show();
  }
}

void mouseClicked(){
  follow = !follow;
}

class Atom{
  int myX, myY, myColor;
  String symbol;
  Atom(String sym, int col){
    myX = (int)(Math.random()*301) + 100;
    myY = (int)(Math.random()*301) + 100;
    symbol = sym;
    myColor = col;
  }
  void move(){
    if(myX > mouseX && myX - mouseX > 100 && follow){
      myX += (int)(Math.random()*3 - 2);
    } else if(myX < mouseX && mouseX - myX > 100 && follow){
      myX -= (int)(Math.random()*3 - 2);
    } else {
      myX += (int)(Math.random()*3) - 1;
    }
    
    if(myY > mouseY && myY - mouseY > 100 && follow){
      myY += (int)(Math.random()*3) - 2;
    } else if(myY < mouseY && mouseY - myY > 100 && follow){
      myY -= (int)(Math.random()*3) - 2;
    } else {
      myY += (int)(Math.random()*3) - 1;
    }
  }   
  void show(){
    fill(myColor);
    ellipse(myX, myY, 25, 25);
    fill(0);
    text(symbol, myX - 3, myY);
  }
}
