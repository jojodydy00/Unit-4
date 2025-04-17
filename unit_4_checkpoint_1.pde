
color green = #A7E3A9;
color black = #050505;
color pink = #FA2154;
color turquoise = #BBE8E1;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  house(100, 300);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);
  body();
  roof();
  window(50, 130); //left
  window(190, 60); //right
  door();
  popMatrix();
}

void body() {
  fill(green);
  stroke(black);
  strokeWeight(6);
  rect(0, 0, 300, 300);
}

void roof() {
  fill(pink);
  stroke(206, 25, 67);
  strokeWeight(6);
  triangle(6, -6, 160, -150, 296, -6);
}

void window(int x, int y) {
  fill(turquoise);
  stroke(150, 188, 183);
  square(x, y, 60);
}
  
void door() {
  fill(149, 140, 122);
  stroke(103, 52, 42);
  rect(180, 200, 60, 120); 
}
























//color pink = #ff006e;
// color purp = #8338ec;
// int y = 0;
// while ( y <= 600) {
// float percent = map(y, 0, 600, 0, 1);
// color current = lerpColor(pink, purp, percent);
// stroke(current);
// line(0, y, 600, y);
// y = y + 10; //the gap
// }
//}
