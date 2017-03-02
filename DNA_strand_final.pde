float r=20;
float i=0;

void setup() {
  size(600, 600, P3D);
  background(0);
  stroke(255);
  fill(255);
}

void draw() {
  background(0);
  lights();
  translate(0, height/2);

  rotateX(map(mouseY, 0, height, PI, -PI));
  //rotateY(map(mouseX, 0, width, PI, -PI));

  for (float i=0; i<width; i=i+20) {

    pushMatrix();
    translate(i, r*cos(i), r*sin(i));
    fill(#F70008);
    stroke(#F70008);
    sphere(5);
    
    popMatrix();

    pushMatrix();
    translate(i, r*sin(i), r*cos(i));
    fill(#3230E3);
    stroke(#3230E3);
    sphere(5);
    
    popMatrix();
    
    pushMatrix();
    stroke(255);
    line(i, r*cos(i), r*sin(i), i+20, r*cos(i+20), r*sin(i+20));
    line(i, r*sin(i), r*cos(i), i+20, r*sin(i+20), r*cos(i+20));
    line(i, r*cos(i), r*sin(i), i, r*sin(i), r*cos(i));
    line(i+20, r*cos(i+20), r*sin(i+20), i+20, r*sin(i+20), r*cos(i+20));
    popMatrix();
  }
}