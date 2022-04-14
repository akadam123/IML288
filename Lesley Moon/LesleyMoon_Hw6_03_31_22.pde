/* Lesley Moon
 March 31, 2022
 FUNCTIONS
 
 "Shaved Sheep"
 
 Click the screen to shave the sheep's fluff!
 */

float fade;
float fadeAmount = 1;
int value = 255;
color blue = #6DCFF6;
color pink = #F9B7B1;
color blue2 = #49A6DD;
color pink2 = #F37765;
color yellow = #EAEA8C;
boolean falling = false;


Drop[] fluff = new Drop[50];
color[] colors = {
  blue, pink, blue2, pink2
};

void setup () {
  size(600, 600);
  for (int i = 0; i < fluff.length; i++) {
    fluff[i] = new Drop();
  }
}

void draw () {
  // sky and grass background
  background(#4354A4);
  noStroke();
  fill(#A0CE62);
  rect(300, 570, 600, 300);

  pushMatrix();
  drawStars();
  drawYellowSheep();
  drawSheep(-180, 80, #6DCFF6, #49A6DD);
  drawSheep(180, 80, #F9B7B1, #F37765);
  popMatrix();

  // falling fluff (setting fluff to top again)
  int count = 0;
  if (falling == true) {
    for (int i = 0; i < fluff.length; i++) {
      fluff[i].fall();
      fluff[i].show();
      if (fluff[i].y > height) {
        count += 1;
        if (count == fluff.length) {
          falling = false;
          for (int j = 0; j < fluff.length; j++) {
            fluff[j] = new Drop();
          }
          break;
        }
      }
    }
  }
}

void fall() {
  for (int i = 0; i < fluff.length; i++) {
    fluff[i].fall();
    fluff[i].show();
  }
}

void drawStars() {
  if (fade < 0) {
    fadeAmount = 1;
  }
  if (fade > 255) {
    fadeAmount = -1;
  }
  fade += fadeAmount;

  stroke(255, fade);
  strokeWeight(3);
  noFill();
  ellipse(60, 40, 5, 5);
  ellipse(160, 180, 5, 5);
  ellipse(70, 230, 5, 5);
  ellipse(300, 80, 5, 5);
  ellipse(440, 220, 5, 5);
  ellipse(480, 80, 5, 5);
  ellipse(510, 340, 5, 5);
}

void drawYellowSheep() {
  // center
  ellipseMode(CENTER);
  rectMode(CENTER);

  // head
  noStroke();
  fill(#EAEA8C);
  ellipse(mouseX, 240, 100, 90);
  //ellipse(300, 240, 100, 90);

  // body mid
  noStroke();
  fill(#EAEA8C);
  ellipse(mouseX, 290, 130, 130);
  //ellipse(300, 290, 130, 130);

  // body bottom
  noStroke();
  fill(#EAEA8C);
  ellipse(mouseX, 340, 170, 130);
  //ellipse(300, 340, 170, 130);

  // face shape
  noStroke();
  fill(255);
  ellipse(mouseX, 235, 52, 58);
  //ellipse(300, 235, 52, 58);

  // left ear
  pushMatrix();
  noStroke();
  fill(255);
  translate(pmouseX-300, 0);
  rotate(radians(45));
  ellipse(350, -40, 20, 8);
  popMatrix();

  // right ear
  pushMatrix();
  noStroke();
  fill(255);
  translate(pmouseX-300, 0);
  rotate(radians(-45));
  ellipse(75, 385, 20, 8);
  popMatrix();

  // left leg
  pushMatrix();
  noStroke();
  fill(#EAEA8C);
  translate(mouseX-300, 0);
  rect(285, 420, 13, 60);

  // left bump
  noStroke();
  fill(#EAEA8C);
  ellipse(285, 420, 20, 20);
  //ellipse(285, 420, 20, 20);

  // left hoof
  noStroke();
  fill(255);
  rect(285, 455, 13, 18);
  //rect(285, 455, 13, 18);

  // right leg
  noStroke();
  fill(#EAEA8C);
  rect(320, 420, 13, 60);

  // right bump
  noStroke();
  fill(#EAEA8C);
  ellipse(320, 420, 20, 20);

  // right hoof
  noStroke();
  fill(255);
  rect(320, 455, 13, 18);

  // left eye
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(45));
  //translate(pmouseX-300, pmouseY-300);
  ellipse(360, -34, 7, 5);
  popMatrix();

  // right ear
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(-45));
  ellipse(64, 390, 7, 5);
  popMatrix();

  // left mouth
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(45));
  ellipse(386, -35, 6, 4);
  popMatrix();

  // right mouth
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(-45));
  ellipse(38, 389, 6, 4);
  popMatrix();

  // mid mouth
  noStroke();
  fill(0);
  ellipse(300, 251, 3, 7);

  // smile
  noStroke();
  fill(0);
  ellipse(300, 256, 7, 3);

  //fluff left top
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(275, 284, 25, 25, 0, PI);
  //arc(275, 284, 25, 25, 0, PI);

  //fluff right top
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(326, 278, 25, 25, 0, PI);
  //arc(326, 278, 25, 25, 0, PI);

  //fluff left mid
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(250, 350, 25, 25, 0, PI);

  //fluff mid
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(300, 330, 25, 25, 0, PI);

  //fluff right bottom
  noFill();
  stroke(#D3CD65);
  strokeWeight(3);
  arc(340, 360, 25, 25, 0, PI);

  //fluff left leg
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(286, 395, 25, 25, 0, PI);

  //fluff right leg
  noFill();
  stroke(#D3CD65);
  strokeWeight(4);
  arc(318, 395, 25, 25, 0, PI);
  popMatrix();
}

void drawSheep(int x, int y, color a, color b) {
  translate(pmouseX-300, 0);
  pushMatrix();
  translate(x, y);
  // head
  noStroke();
  fill(a, value);
  ellipse(300, 240, 100, 90);

  // body mid
  noStroke();
  fill(a);
  ellipse(300, 290, 130, 130);

  // body bottom
  noStroke();
  fill(a);
  ellipse(300, 340, 170, 130);

  // face shape
  noStroke();
  fill(255);
  ellipse(300, 235, 52, 58);

  // left ear
  pushMatrix();
  noStroke();
  fill(255);
  rotate(radians(44));
  //ellipse(350, -40, 20, 8);
  ellipse(390, -65, 20, 8);
  popMatrix();

  // right ear
  pushMatrix();
  noStroke();
  fill(255);
  rotate(radians(-46));
  ellipse(29, 353, 20, 8);
  popMatrix();

  // left leg
  noStroke();
  fill(a);
  rect(285, 420, 13, 60);

  // left bump
  noStroke();
  fill(a);
  ellipse(285, 420, 20, 20);
  //ellipse(285, 420, 20, 20);

  // left hoof
  noStroke();
  fill(255);
  rect(285, 455, 13, 18);
  //rect(285, 455, 13, 18);

  // right leg
  noStroke();
  fill(a);
  rect(320, 420, 13, 60);

  // right bump
  noStroke();
  fill(a);
  ellipse(320, 420, 20, 20);

  // right hoof
  noStroke();
  fill(255);
  rect(320, 455, 13, 18);

  // left eye
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(45));
  ellipse(360, -34, 7, 5);
  popMatrix();

  // right ear
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(-45));
  ellipse(64, 390, 7, 5);
  popMatrix();

  // left mouth
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(45));
  ellipse(386, -35, 6, 4);
  popMatrix();

  // right mouth
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(-45));
  ellipse(38, 389, 6, 4);
  popMatrix();

  // mid mouth
  noStroke();
  fill(0);
  ellipse(300, 251, 3, 7);

  // smile
  noStroke();
  fill(0);
  ellipse(300, 256, 7, 3);

  //fluff left top
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(275, 284, 25, 25, 0, PI);
  //arc(275, 284, 25, 25, 0, PI);

  //fluff right top
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(326, 278, 25, 25, 0, PI);
  //arc(326, 278, 25, 25, 0, PI);

  //fluff left mid
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(250, 350, 25, 25, 0, PI);

  //fluff mid
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(300, 330, 25, 25, 0, PI);

  //fluff right bottom
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(340, 360, 25, 25, 0, PI);

  //fluff left leg
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(286, 395, 25, 25, 0, PI);

  //fluff right leg
  noFill();
  stroke(b);
  strokeWeight(4);
  arc(318, 395, 25, 25, 0, PI);
  popMatrix();
}

void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
  falling = true;
  //if (mouseX < 200 && mouseX > 200 && mouseY < 900 && mouseY > 900) {
  //}
}

//Code adapted/borrowed, https://www.youtube.com/watch?time_continue=320&v=KkyIDI6rQJI&feature=emb_logo&ab_channel=TheCodingTrain, March 30, 2022
class Drop {
  float x = random(width);
  float y = random(-500, -50);
  float yspeed = random(3, 5);
  color c1 = (colors[int(random(0, 4))]);

  void fall() {
    y = y + yspeed;
    yspeed = yspeed + 0.001;
  }
  // citation ends

  void show() {
    noStroke();
    fill(c1);
    ellipse(x, y, 40, 40);
    ellipse(x + 30, y, 40, 40);
    ellipse(x + 15, y - 15, 40, 40);
    ellipse(x + 15, y + 15, 40, 40);
  }
}
