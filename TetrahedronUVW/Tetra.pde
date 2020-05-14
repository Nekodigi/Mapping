class Tetra{
  PVector pos;
  float size;
  
  Tetra(PVector pos, float size){
    this.pos = pos;
    this.size = size;
  }
  
  void show(){
    strokeWeight(5);
    tetra(pos, size, false);
    strokeWeight(20);
    PVector[] ovecs = tetraVecs(-size/3, false);//center of face (for display vector)
    PVector[] vecs = tetraVecs(size, false);//vertex of this tetrahedron
    //show all vertex and center of face
    stroke(255, 200, 200);point(ovecs[0].x, ovecs[0].y, ovecs[0].z);point(vecs[0].x, vecs[0].y, vecs[0].z);
    stroke(200, 255, 200);point(ovecs[1].x, ovecs[1].y, ovecs[1].z);point(vecs[1].x, vecs[1].y, vecs[1].z);
    stroke(200, 200, 255);point(ovecs[2].x, ovecs[2].y, ovecs[2].z);point(vecs[2].x, vecs[2].y, vecs[2].z);
    stroke(255, 255, 255);point(ovecs[3].x, ovecs[3].y, ovecs[3].z);point(vecs[3].x, vecs[3].y, vecs[3].z);
    //calculate midpoint
    PVector mid0 = PVector.add(vecs[0], vecs[1]).div(2);
    PVector mid1 = PVector.add(vecs[1], vecs[2]).div(2);
    PVector mid2 = PVector.add(vecs[2], vecs[0]).div(2);
    //show midpoint
    stroke(255, 0, 0);
    stroke(255, 100, 100);point(mid0.x, mid0.y, mid0.z);
    stroke(100, 255, 100);point(mid1.x, mid1.y, mid1.z);
    stroke(100, 100, 255);point(mid2.x, mid2.y, mid2.z);
    //calculate basis vector
    PVector vec00 = PVector.sub(vecs[2], vecs[1]).normalize();
    PVector vec01 = PVector.sub(vecs[3], mid1).normalize();
    PVector vec02 = vec01.cross(vec00);//vec00, vec01 scala is 1, so vec2 scala is 1(we don't have to normalize)
    PVector vec10 = PVector.sub(vecs[0], vecs[2]).normalize();
    PVector vec11 = PVector.sub(vecs[3], mid2).normalize();
    PVector vec12 = vec11.cross(vec10);
    PVector vec20 = PVector.sub(vecs[1], vecs[0]).normalize();
    PVector vec21 = PVector.sub(vecs[3], mid0).normalize();
    PVector vec22 = vec21.cross(vec20);
    PVector vec30 = PVector.sub(vecs[2], vecs[1]).normalize();
    PVector vec31 = PVector.sub(vecs[0], mid1).normalize();
    PVector vec32 = vec30.cross(vec31);
    //display all basis vector
    strokeWeight(10);
    stroke(255, 0, 0);ShowVec(ovecs[0], vec00, vecDSize);ShowVec(ovecs[1], vec10, vecDSize);ShowVec(ovecs[2], vec20, vecDSize);ShowVec(ovecs[3], vec30, vecDSize);
    stroke(0, 255, 0);ShowVec(ovecs[0], vec01, vecDSize);ShowVec(ovecs[1], vec11, vecDSize);ShowVec(ovecs[2], vec21, vecDSize);ShowVec(ovecs[3], vec31, vecDSize);
    stroke(0, 0, 255);ShowVec(ovecs[0], vec02, vecDSize);ShowVec(ovecs[1], vec12, vecDSize);ShowVec(ovecs[2], vec22, vecDSize);ShowVec(ovecs[3], vec32, vecDSize);
  }
}
