void setup() {
  size(900, 600);

  color pink = #ff006e;
  color purp = #8338ec;

  //radiant sky
  float skyx = -900;
  while (skyx <= 900) {
    float percent = map(skyx + 900, 0, 1800, 0, 1);
    color current = lerpColor(pink, purp, percent);
    stroke(current);
    line(skyx, 0, 600 + skyx, 600);
    skyx = skyx + 1;
  }
  //ground
  noStroke();
  fill(255);
  rect(0, 300, 900, 350);
  int count = 0;
  while (count < 50) {
    lollipop(random(0, 400), random(300, 600), random(0.5, 1));
    count = count + 1;
  }
}

//lollipop function
void lollipop(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  body();
  stick();
  popMatrix();
}

void body() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  noStroke();
  circle(0, 0, 50);
}

void stick() {
  stroke(0);
  strokeWeight(4);
  line(0, 25, 0, 75);
}
