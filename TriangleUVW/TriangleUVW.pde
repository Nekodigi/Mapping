Triangle fromT;
Triangle toT;

void setup(){
  fullScreen();
  strokeWeight(20);
  ArrayList<PVector> vertices = polygon(-width/4, 0, 3, 1000);
  fromT = new Triangle(vertices.get(0), vertices.get(1), vertices.get(2));
  toT = new Triangle(new PVector(width/4, -height/4), new PVector(width/2, height/4), new PVector(width/4, height/4));
}

void draw(){
  background(255);
  translate(width/2, height/2);
  fromT.P = new PVector(mouseX-width/2, mouseY-height/2);
  fromT.show();
  PVector uvw = fromT.getUVW();
  toT.setUVW(uvw);
  toT.show();
}