class Player{
  PVector pos;
  
  
  Player(){
    pos = new PVector(175,100);
    
  }
  void Display(){
    rect(pos.x,pos.y,20,125,10);
  }
  void Update(){
    pos.y = mouseY;
  }
  
}
  
