// animation assignment
//damon chan

int x;

void setup() {
  size (800,800);
  strokeWeight(2);
}


void draw() {
  
  background(#000000);
  stroke(#FF8808);
  fill(#000000); //option boxes
  rect(230,680, 140,55);
  rect(430,680, 140,55);
  rect(630,680, 140,55);
  stroke(#FFE600);
  rect(30,680, 140,55);
  
  fill(#FFE600); //actions
  textSize(40);
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
  
  
  
}
