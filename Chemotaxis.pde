Atom [] atoms;
int[] colorList = {color(255, 255, 255)};
void setup(){
  size(500, 500);
  background(0);
  atoms = new Atom[50];
  for(int i = 0; i < atoms.length; i++){
    atoms[i] = new Atom();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < atoms.length; i++){
    atoms[i].walk();
    atoms[i].show();
  }
}

void mouseClicked(){
  
}

class Atom{
  int myX, myY, myColor;
  Atom(){
    myX = (int)(Math.random()*301) + 100;
    myY = (int)(Math.random()*301) + 100;
    double random = Math.random();
    if(random < 0.2){
      myColor = colorList[0]; // alkali
    } else if(random < 0.4){
      myColor = colorList[1]; // alkaline earth
    } else if(random < 0.6){
      myColor = colorList[2]; // transition
    } else if(random < 0.8){
      myColor = colorList[3]; // nonmetal
    } else {
      myColor = colorList[4]; // noble 
    }
  }
  void walk(){
    xDist = 
  }   
  void show(){
    fill(myColor);
    ellipse(myX, myY, 25, 25);
  }
}
