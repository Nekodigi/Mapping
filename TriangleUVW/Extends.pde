void triangle(PVector A, PVector B, PVector C){
  triangle(A.x, A.y, B.x, B.y, C.x, C.y);
}

void circle(PVector P, float r){
  ellipse(P.x, P.y, r, r);
}