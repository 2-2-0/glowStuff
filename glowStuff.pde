// glowStuff, by 220
// v1.0, for processing
// GPLv2 license

color c;

void setup () {
  size (600, 600);
  noFill ();
}
void draw () {
  background (0);
  
  c = color (255);
  for (int i=0; i<35; i++) glowLine (int (random (width)), int (random (height)), int (random (width)), int (random (height)), c);
  
  c = color (255, 0, 0);
  for (int i=0; i<250; i++) glowPoint (int (random (width)), int (random (height)), c);
  
  c = color (0, 255, 0);
  glowRect (50, 50, 200, 200, c);
  glowPoint (125, 125, c);
  glowLine (50, 250, 250, 50, c);
  glowTriangle (50, 550, 150, 350, 250, 550, c);
  glowQuad (350, 150, 550, 100, 500, 550, 300, 300, c);
  glowEllipse (200, 200, 35, 35, c);

}
