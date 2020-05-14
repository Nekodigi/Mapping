ArrayList<PVector> polygon(float x, float y, int n, float r) {
  ArrayList<PVector> result = new ArrayList<PVector>();
  for (float i = 0; i < n; i++) {
    result.add(new PVector(x+sin(i/n*TWO_PI)*r, y-cos(i/n*TWO_PI)*r));
  }
  return result;
}