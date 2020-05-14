float baseSize = 400;
float vecDSize = 100;//vector display size
Tetra tetra;

void setup(){
  size(500, 500, P3D);
  tetra = new Tetra(new PVector(0, 0, 0), 400);
}

void draw(){
  background(0);
  stroke(255);
  noFill();
  translate(width/2, height/2, -height);
  float rt = float(frameCount)/100;
  //rotateX(rt/10); rotateY(rt); rotateZ(rt/5);
  tetra.show();
}
