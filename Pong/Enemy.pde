class Enemy{
  PVector pos;
  PVector velocity;
  
  Enemy(){
    pos = new PVector(2400,100);
    velocity = new PVector(0,15);
  }
  void Display(){
    rect(pos.x,pos.y,20,125,10);
  }
  void Update(){
    pos.add(velocity);
    
    if (pos.y > displayHeight - 125)
      velocity.y *= -1;
      
    if (pos.y < 0)
      velocity.y *= -1;
      
  }
  
}
