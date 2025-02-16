class Ball{
  PVector pos;
  PVector velocity;
  Ball(){
    pos = new PVector(1400,500);
    velocity = new PVector(-13,-13);
  }
  void Display(){
    ellipse(pos.x,pos.y,100,100);
  }
  void Update(){
    pos.add(velocity);

    if (pos.y > displayHeight)
      velocity.y *= -1;
      
    if (pos.y < 0)
      velocity.y *= -1;
  }
}
