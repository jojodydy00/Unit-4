void setup() {
  size(600, 600);
  background(255);
  
  color pink = #ff006e;
  color purp = #8338ec;

  int x = -600;
  while (x <= 600) {
    float percent = map(x + 600, 0, 1200, 0, 1);
    color current = lerpColor(pink, purp, percent);
    stroke(current);
    line(x, 0, 600 + x, 600);
    x += 50;
  }
}
