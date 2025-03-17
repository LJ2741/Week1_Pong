class Player{
  PVector pos;
  
  
  Player(){
    pos = new PVector(175,100);
    
  }
  void Display(){
    rect(pos.x,pos.y,20,125,10);
  }
  void movement(){
    if (key == 'w') {
      pos.y -= 50;
    }
    if (key == 's') {
      pos.y += 50;
    }
  }
  
}
  
