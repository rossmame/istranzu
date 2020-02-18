/*
 *  Rossano Mameli
 *  Matricola 65437
 */


void setup() {
  size(640, 360);
}

void draw() {
  background(210,210,250);
  
  pushMatrix();
  translate(width*0.2, height*0.6);
  rotate(frameCount / 80.0);
  fill(50, 220, 0, 200);
  stroke(0,0,255);
  polygon(0, 0, 62, 3);  // Triangle
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.4);
  noFill();
  noStroke();
  fill(248, 243, 43, 200);
  stroke(0,0,255);
  rotate(frameCount / -50.0);
  polygon(0, 0, 70, 4);  // Heptagon
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.6);
  rotate(frameCount / 10.0);
  fill(255, 0, 0, 500);
  stroke(0,0,255);
  polygon(0, 0, 62, 3);  // Triangle
  popMatrix();
  
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
