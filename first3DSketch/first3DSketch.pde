float rotx, roty;

void setup() {
  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);

  translate(width/2, height/2, 0);
  fill(255, 0, 0);
  rotateX(rotx);
  rotateY(roty);


  cube(0, 200, 3, #0000FF, 200);
  ball(width/2, height/2, 0, #FF0000, 100);
  ball(100, -200, 0, #00FF00, 150);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill(c);
  stroke(0);
  strokeWeight(3);
  sphere(size); //side length
  popMatrix();
}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*0.01;
}
