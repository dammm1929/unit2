PImage mang;
boolean mangOn;
color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;
int percent;
color selected;

float shade;
float sliderX;
int change;

float advanselect;

color redorange = lerpColor(red, orange, advanselect);
color orangeyellow = lerpColor(orange, yellow, .5);
color yellowgreen = lerpColor(yellow, green, advanselect);














void setup() {
  size(1000,1000);
  background(255);
  percent = 0;
  //strokeWeight(5);
  mang = loadImage("mango.png");
  mangOn = false;
  sliderX = 300;
  change = 0;
}

void draw() {

  stroke(0);
  strokeWeight(1);
  fill(#646464);
  rect(0,750, 1000,250);
  
  tactile(860,0, 130,150);
  strokeWeight(3);
  rect(860,0,130,150);
  image(mang, 850,0, 150,150);
  
  

  //color buttons

  tactile(150);
  fill(red);
  //stroke(red);
  rect(150, 850, 100, 50);

  tactile(250);

  fill(orange);
  //stroke(orange);
  rect(250, 850, 100, 50);

  tactile(350);
  fill(yellow);
  //stroke(yellow);
  rect(350, 850, 100, 50);
  
  tactile(450);
  fill(green);
  //stroke(green);
  rect(450, 850, 100, 50);
  
  tactile(550);
  fill(cyan);
  //stroke(cyan);
  rect(550, 850, 100, 50);
  
  tactile(650);
  fill(blue);
  //stroke(blue);
  rect(650, 850, 100, 50);
  
  tactile(750);
  fill(purp);
  //stroke(purp);
  rect(750, 850, 100, 50);

  stroke(#000000);
  fill(selected);
  circle(920, 875, 100);
  
  if (change == 1 && mouseX > 150 && mouseX < 850) {
    sliderX = mouseX;
  }


//slider
  stroke(#000000);
  line(150,950,850,950);
  circle(sliderX,950,35);
  
  if (sliderX > 200 && sliderX < 300) {
     advanselect = (sliderX - 200)/100;
     selected = redorange;

  }
  
  
}

//slider function
void mouseReleased() {
  change = 0;
}



//color tactileness
void tactile (int x) {
  if (mouseY > 850 && mouseY < 900 && mouseX > x && mouseX < x + 100) {
    stroke(#000000);
  } else {
    noStroke();
  }
}


void mousePressed() {
  
  //slider function
  if (mouseX > 150 && mouseX < 850 && mouseY > 937.5 && mouseY < 967.5) {
    change = 1;
  }
  
  
  
//color display
  //if (mouseX > 150 && mouseX < 250 && mouseY > 850 && mouseY < 900) {
  //  selected = red;
  //}

  //if (mouseX > 250 && mouseX < 350 && mouseY > 850 && mouseY < 900) {
  //  selected = orange;
  //}

  //if (mouseX > 350 && mouseX < 450 && mouseY > 850 && mouseY < 900) {
  //  selected = yellow;
  //}
  //if (mouseX > 450 && mouseX < 550 && mouseY > 850 && mouseY < 900) {
  //  selected = green;
  //}

  //if (mouseX > 550 && mouseX < 650 && mouseY > 850 && mouseY < 900) {
  //  selected = cyan;
  //}

  //if (mouseX > 650 && mouseX < 750 && mouseY > 850 && mouseY < 900) {
  //  selected = blue;
  //}
  
  //if (mouseX > 750 && mouseX < 850 && mouseY > 850 && mouseY < 900) {
  //  selected = purp;
  //}
  
  
  //mango sticker
  if (mouseX > 850 && mouseX < 1000 && mouseY > 0 && mouseY < 150) {
    mangOn = !mangOn;
  }
}



void mouseDragged() {
  if (mangOn == false) {
    strokeWeight(5);
    stroke(selected);
  if (mouseY < 750) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  } else {
    image(mang, mouseX - 50, mouseY - 50, 100,100);
  }
}



void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255,255, 0);
  } else {
    fill(255);
  }
}

void showOnOff() {
  if (mangOn == true) {
    stroke(255,0,0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
