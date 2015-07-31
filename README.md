# glowStuff
Processing functions to draw some glowing primitives

Just add glowStuffLib.pde to your own project and use any of the following functions:

void glowPoint (int x, int y, color c);
void glowRect (int x, int y, int w, int h, color c);
void glowLine (int x, int y, int a, int b, color c);
void glowTriangle (int x1, int y1, int x2, int y2, int x3, int y3, color c);
void glowQuad (int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color c);
void glowEllipse (int x1, int y1, int r_w, int r_h, color c);



I know, I know... you expected much more from this code, but somehow it works and gives beatiful, practical, non-aliased results.

I have this urge to develop some visual flicker and visual artifacts for processing in the near future, so please expect a newer update: optimized, smarter, tidier version coming in the future....

