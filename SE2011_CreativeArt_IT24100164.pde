// Variables
float snowY = 80; 
float speed = 3;

float cloudX = 0;
float cloud2X = 350;
float cloud3X = 700;
float cloud4X = 1000;

void setup() {
  size (1200, 800);
}

void draw() {
  background(#C0DFE8); //sky
  
  //Ground
  fill(#EBEEF0);
  rect(0, 650, 1200, 150);
  
  fill(255); //mini snaow balls on ground
  ellipse(70, 630, 40, 50);
  ellipse(100, 640, 30, 30);
  ellipse(200, 640, 20, 20);
  ellipse(480, 630, 30, 30);
  ellipse(650, 640, 30, 30);
  ellipse(700, 630, 40, 40);
  ellipse(870, 630, 30, 30);
  ellipse(900, 640, 20, 20);
  ellipse(1150, 640, 30, 30);
  
  
  //Snowman
  fill(255);
  ellipse(300, 410, 80, 80); //head
  ellipse(300, 550, 180, 200); //body
  
  fill(0);
  ellipse(290, 400, 10, 20); //eyes
  ellipse(310, 400, 10, 20);
  
  
  //Tree
  fill(#894712);
  rect(990, 580, 20, 70);
  
  fill(#62901F);
  triangle(850, 580, 1000, 450, 1150, 580);
  triangle(880, 480, 1000, 350, 1120, 480);
  triangle(920, 380, 1000, 280, 1080, 380);
  
  
  //Cloud1
  fill(#E1E8ED);
  ellipse(cloudX, 80, 60, 40);
  ellipse(cloudX + 50, 80, 100, 60);
  ellipse(cloudX + 25, 50, 100, 60);
  
  //Cloud2
  ellipse(cloud2X, 120, 100, 60);
  ellipse(cloud2X + 50, 120, 100, 60);
  ellipse(cloud2X + 25, 90, 100, 60);
  
  //Cloud3
  ellipse(cloud3X, 60, 100, 60);
  ellipse(cloud3X + 50, 60, 100, 60);
  ellipse(cloud3X + 25, 30, 100, 60);
  
  //Cloud4
  ellipse(cloud4X, 120, 100, 60);
  ellipse(cloud4X + 50, 120, 100, 60);
  ellipse(cloud4X + 25, 90, 100, 60);
  
  
  //Move clouds
  cloudX += 1;
  cloud2X += 1;
  cloud3X += 1;
  cloud4X += 1;

  
  //Snowing
  fill (255);
  //Snow from cloud 1
  for (int i = -40; i <= 40; i += 20) {
    ellipse(cloudX + i, snowY, 10, 10);
  }
  
  //Snow from cloud 2
  for (int i = -40; i <= 40; i += 20) {
    ellipse(cloud2X + i, snowY, 10, 10);
  }
  
  //Snow from cloud 3
  for (int i = -40; i <= 40; i += 20) {
    ellipse(cloud3X + i, snowY, 10, 10);
  }
  
  //Snow from cloud 4
  for (int i = -40; i <= 40; i += 20) {
    ellipse(cloud4X + i, snowY, 10, 10);
  }
  
  
  
  if (cloudX > width) {
    cloudX = -150;
  }

  if (cloud2X > width) {
    cloud2X = -150;
  }

  if (cloud3X > width) {
    cloud3X = -150;
  }

  if (cloud4X > width) {
    cloud4X = -150;
  }


  // Move snow down
  snowY += speed;

  // Reset snow
  if (snowY > 650) {
    snowY = 80;
  }
  
  //Mouse control(snow speed)
  speed = map(mouseX, 0, width, 1, 6);
  
}
