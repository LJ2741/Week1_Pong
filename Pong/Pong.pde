Player player = new Player();
Ball ball = new Ball();
Enemy enemy = new Enemy();

PVector collision = new PVector(-1,-1);
float ran = 0;
int PScore = 0;
int EScore = 0;
PVector Repos = new PVector(1400,1000);
PVector Revel = new PVector(-13,-13);

void setup(){
  frameRate(60);
  fullScreen();
}

void draw(){
  background(0);
  player.Display();
  ball.Display();
  ball.Update();
  enemy.Display();
  enemy.Update();
  Collisions();
  AI();
  Score();
}

void keyPressed() {
  player.movement();
}

void Collisions(){
  if (dist(player.pos.x + 10,player.pos.y + 50,ball.pos.x,ball.pos.y) < 75){
    ball.velocity.mult(-1);
    ran = random(2);
    round(ran);
    if (ran == 0);{
      ball.velocity.mult(-1);
    }
    if (ran == 1);{
      ball.velocity.x *= -1;
    }
  }
  
  if (dist(enemy.pos.x,enemy.pos.y + 50,ball.pos.x,ball.pos.y) < 75){
    ball.velocity.mult(-1);
    enemy.velocity.y = 0;
    ran = random(2);
    round(ran);
    if (ran == 0);{
      ball.velocity.mult(-1);
    }
    if (ran == 1);{
      ball.velocity.x *= -1;
    }
  }
}

void AI(){
  if (ball.pos.y < enemy.pos.y){
    enemy.velocity.y = -17;
  }
  if (ball.pos.y > enemy.pos.y){
    enemy.velocity.y = 17;
  }
}

void Score(){
  if (ball.pos.x < 0){
    ball.pos = Repos;
    ball.velocity = Revel;
    EScore += 1;
  }
  if (ball.pos.x > displayWidth){
    ball.pos = Repos;
    ball.velocity = Revel;
    PScore += 1;
  }
  text(PScore,900,100);
  text(EScore,1650,100);
}
    
