// animation assignment
// damon chan
// https://www.dafont.com/eight-bit-madness.font

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minimtools;
AudioPlayer slash;
AudioPlayer dmg;
AudioPlayer song;
AudioPlayer dust;
AudioPlayer text;

PFont retro;
int x;
int counter;
int black;
int white;
int flashes;
int y;
int attackframe;
int health;
int reset;
int textheight;
int textspeed;
PImage img;
int fx;
int ow;
int bbox;
int stop;
int opa;
int r1;
int r2;
int r3;
int tru;
int r4;

void setup() {
  size (800,800);
  img = loadImage("froggit_img.png");
  minimtools = new Minim(this);
  slash = minimtools.loadFile("undertale-slash.mp3");
  dmg = minimtools.loadFile("dealing-damage.mp3");
  song = minimtools.loadFile("music.mp3");
  dust = minimtools.loadFile("dustsound.mp3");
  text = minimtools.loadFile("textsound.mp3");
  song.play();
  retro = createFont("Eight-Bit Madness.ttf", 45);
  x = -500;
  counter = 1;
  black = 0;
  white = 255;
  flashes = 0;
  y = 465;
  attackframe = 0;
  health = 180;
  reset = 0;
  textheight = 90;
  textspeed = 5;
  fx = 300;
  ow = 0;
  bbox = 10;
  stop = 0;
  opa = 255;
  r1 = 0;
  r2 = 0;
  r3 = -700;
  tru = 0;
  r4 = -700;
  
  
}


void draw() {
  background(#000000);
  stroke(#FF8808);
  strokeWeight(2);
  fill(#000000); //option boxes
  rect(230,680, 140,55);
  rect(430,680, 140,55);
  rect(630,680, 140,55);
  stroke(#FFE600);
  rect(30,680, 140,55);
  
  fill(#FFE600); //actions
  textFont(retro);
  text("FIGHT", 63,720);
  fill(#FF8808);
  text("ACT", 290,720);
  text("ITEM", 475,720);
  text("MERCY", 650,720);
  
  fill(#F70202); //heart
  stroke(#F70202);
  triangle(48,713, 54,706, 42,706);
  ellipse(44.8,704, 6,7.5);
  ellipse(52,704, 6,7.5);
  
  stroke(#FFFFFF); //white box
  fill(#000000);
  strokeWeight(5);
  rect(30,460,740,160);
  
  strokeWeight(1); //green background
  stroke(#1EAF12);
  rect(10,30, 780,420);
  line(10,240, 790,240);
  line(140,30, 140,450);
  line(270,30, 270,450);
  line(400,30, 400,450);
  line(530,30, 530,450);
  line(660,30, 660,450);
  
  fill(#FFFFFF); //health and level
  text("LV 1", 150,660);
  textSize(35);
  text("HP", 310,658);
  textSize(45);
  text("20 / 20", 420,660);
  stroke(#FFF700);
  fill(#FFF700);
  rect(360,638,32,25);


//attack bar bars
  stroke(#F50A0A); //red
  fill(#F50A0A);
  rect(120,500,13,80);
  rect(667,500,13,80);
  
  stroke(#E9FF00); //yellow
  fill(#E9FF00);
  rect(250,480,13,120);
  rect(537,480,13,120);
  
  rect(350,477, 100,126);
  
  stroke(#50C100); //green
  fill(#50C100);
  rect(355,480, 25,120);
  rect(420,480, 25,120);
  
  stroke(0); //black
  fill(0);
  rect(380,480, 40,120);
  
  stroke(#E9FF00); //attack bar oval
  fill(#E9FF00);
  strokeWeight(5);
  noFill();
  ellipse(400,540, 700,120);
  stroke(0);
  strokeWeight(8);
  ellipse(400,540, 713,132);
  
  stroke(#E9FF00); //little lines and details
  fill(#E9FF00);
  strokeWeight(3);
  line(250,470, 550,470);
  line(250,610, 550,610);
  
  fill(0);
  stroke(0);
  rect(268,465, 15,5);
  rect(513,465, 15,5);
  rect(513,605, 15,5);
  rect(268,605, 15,5);
  
  stroke(#F50A0A);
  line(160,520, 220,520);
  line(160,550, 220,550);
  line(640,520, 580,520);
  line(640,550, 580,550);
  stroke(#E9FF00);
  line(280,515, 330,515);
  line(280,555, 330,555);
  line(470,555, 520,555);
  line(470,515, 520,515);
  
  
  //froggit
  image(img, fx,150, 200,200);
  if (attackframe == 60) {
    ow += 1;
  }
  if (ow == 1) {
    fx += 3;
  }
  if (fx >= 320) {
    ow -= 2;
  }
  if (ow == -1) {
    fx -= 3;
  }
  if (fx <= 280) {
    ow += 2;
  }
  if (attackframe == 155) {
    ow = 0;
    fx = 300;
  }
 
  
  //timing bar
  fill(white);
  stroke(black);
  strokeWeight(5);
  

  rect(x,y, 15,150);
  x += 10;
  
  if (x > 395) {
    x = 395;
    counter += 1;
    attackframe += 1;
  }
  
  if (counter <= 7) {
    white = 0;
    black = 255;
  }
  
  if (counter > 7) {
    white = 255;
    black = 0;
  }
  
  if (counter == 14) {
    counter = 1;
    flashes += 1;
  }
  
  if (flashes == 15) {
    y = 805;
  }
    
  //slash
  stroke(#F27188);
  fill(#F27188);
  if (x == 300) {
    slash.play();
    slash.rewind();
  }
  if (attackframe == 1 || attackframe == 2 || attackframe == 3) {
    rect(400,140, 2,8);
  }
  if (attackframe == 4 || attackframe == 5 || attackframe == 6) {
    rect(396,148, 1,20);
  }
  if (attackframe == 7 || attackframe == 8 || attackframe == 9) {
    rect(394,151, 1,30);
  }
  if (attackframe == 10 || attackframe == 11 || attackframe == 12) {
    rect(392,160, 1,50);
  }
  if (attackframe == 13 || attackframe == 14 || attackframe == 15) {
    rect(390,179, 1,75);
    rect(388,184, 2,20);
  }
  if (attackframe == 16 || attackframe == 17 || attackframe == 18) {
    rect(389,190, 1,90);
    rect(385,220, 3,30);
  }
  if (attackframe == 19 || attackframe == 20 || attackframe == 21) {
    rect(389,210, 1,80);
    rect(385,240, 3,40);
  }
  if (attackframe == 22 || attackframe == 23 || attackframe == 24) {
    rect(389,230, 1,70);
    rect(387,250, 3,40);
  }
  if (attackframe == 25 || attackframe == 26 || attackframe == 27) {
    rect(390,250, 2,60);
    rect(389,270, 2,40);
  }
  if (attackframe == 28 || attackframe == 29 || attackframe == 30) {
    rect(391,290, 2,45);
    rect(391,295, 2,45);
  }
  if (attackframe == 29 || attackframe == 30 || attackframe == 31) {
    rect(395,310, 3,20);
    rect(395,315, 3,7);
  }
  if (attackframe == 32 || attackframe == 33 || attackframe == 34) {
    rect(393,334, 10,5);
    rect(395,336, 7,4);
  }
  if (attackframe == 35 || attackframe == 36 || attackframe == 37) {
    rect(397,337, 11,2);
    rect(400,340, 4,2);
  }
  if (attackframe == 38 || attackframe == 39 || attackframe == 40) {
    rect(410,337, 8,3);
  }
  if (attackframe == 41 || attackframe == 42 || attackframe == 43) {
    rect(415,335, 5,4);
    rect(417,333, 3,4);
  }
  if (attackframe == 44 || attackframe == 45 || attackframe == 46) {
    rect(415,330, 2,6);
    rect(417,328, 2,3);
  }

//damage
  if (attackframe > 60 && attackframe <= 200) {
    fill(#D33131);
    textSize(60);
    text("21", 375,textheight);
    textheight -= textspeed;
  }
  if (attackframe > 60 && attackframe <= 72) {
    textspeed -= 1;
  }
  if (textspeed == -7) {
    textheight = 90;
  }


  strokeWeight(0);
//enemy health bar
  if (attackframe == 15) {
    dmg.play();
    dmg.rewind();
  }
  if (attackframe > 60 && attackframe <= 200) { //both bars will stay until frame 200
    stroke(#626161);
    fill(#626161);
    rect(310,100, 180,15);
    stroke(#05E802);
    fill(#05E802);
    rect(310,100, health,15);
    reset += 1;
  }
  
  if (attackframe > 60 && attackframe <= 155) { //will lose 95 health and stop by frame 150
    if (health == 0) {
     
    }
    else {
      health -= 1;
    }
  }
  
  if (health == 0 && attackframe >= 200) {
    stop += 1;
    tint(255, opa);
    opa -= 5;
    stroke(0);
    fill(0); 
    rect(765,460, r2,160);
    rect(35,460, r1,160);
    
  if (opa == 250) {
    dust.play();
    dust.rewind();
  }
    
  if (health == 0 && attackframe >= 200 && tru == 0) {
    r1 += 5;
    r2 -= 5;
    stroke(#FFFFFF); //white box again to not get overlapped
    noFill();
    strokeWeight(5);
    rect(30,460,740,160);
  }
  if (r1 == 700) {
    tru += 1;
  }
    
  }
  
  if (health == 0 && attackframe >= 320) {
    fill(255);
    text("* YOU WON!", 70,515);
    stroke(0);
    fill(0);
    rect(765,460, r3,80);
    text.play();
    r3 += 8;
    stroke(#FFFFFF); //white box again to not get overlapped
    noFill();
    strokeWeight(5);
    rect(30,460,740,160);

  }
  
  if (health == 0 && attackframe >= 380) {
    fill(255);
    text("* You earned 3 XP and 2 gold.", 70,565);
    stroke(0);
    fill(0);
    rect(765,540, r4,80);
    r4 += 8;
    stroke(#FFFFFF); //white box again to not get overlapped
    noFill();
    strokeWeight(5);
    rect(30,460,740,160);
  }

  
  
  
  
  
//loop
  if (reset == 140 && stop == 0) {
    x = -500;
    counter = 1;
    black = 0;
    white = 255;
    flashes = 0;
    y = 465;
    attackframe = 0;
    //health = 180;
    textheight = 90;
    textspeed = 5;
    reset = 0;
    bbox = 10;
    
  }
    

    
    
    


    
    
  
  
  
  
  
  
  
  
  
  
}
