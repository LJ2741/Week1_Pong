class Enemy{
  PVector pos;
  PVector velocity;
  
  Enemy(){
    pos = new PVector(displayWidth - 30,100);
    velocity = new PVector(0,15);
  }
  void Display(){
    pos.x = displayWidth - 30;
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
