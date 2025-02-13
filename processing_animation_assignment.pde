// animation assignment
// damon chan
// https://www.dafont.com/eight-bit-madness.font


PFont retro;

int x;



void setup() {
  size (800,800);
  retro = createFont("Eight-Bit Madness.ttf", 45);
  
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
  //line(470,555, 520,555);
  
  
  
  
  
  
  
  
  
}
