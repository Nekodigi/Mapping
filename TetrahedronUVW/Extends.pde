void ShowVec(PVector start, PVector d, float lineS){//start direction size
  line(start.x, start.y, start.z, start.x+d.x*lineS, start.y+d.y*lineS, start.z+d.z*lineS);
}
