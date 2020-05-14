class Triangle{
  PVector A, B, C;
  PVector P = new PVector();;
  Triangle(PVector A, PVector B, PVector C){
    this.A = A;
    this.B = B;
    this.C = C;
  }
  
  PVector getUVW(){
    float ABCArea = getArea();
    float APBArea = new Triangle(A, P, B).getArea();
    float BPCArea = new Triangle(B, P, C).getArea();
    float CPAArea = new Triangle(C, P, A).getArea();
    float u = CPAArea/ABCArea;
    float v = APBArea/ABCArea;
    float w = BPCArea/ABCArea;
    return new PVector(u, v, w);
  }
  
  void setUVW(PVector uvw){//xyz >= uvw
    P = PVector.add(PVector.mult(A, uvw.z), PVector.mult(B, uvw.x)).add(PVector.mult(C, uvw.y));
  }
  
  float getArea(){//with Heon's formula
    float a = PVector.dist(B, C);
    float b = PVector.dist(C, A);
    float c = PVector.dist(A, B);
    float s = (a+b+c)/2;
    return sqrt(s*(s-a)*(s-b)*(s-c));
  }
  
  void show(){
    triangle(A, B, C);
    circle(P, 100);
  }
}