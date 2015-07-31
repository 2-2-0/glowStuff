// glowStuffLib, by 220
// v1.0, for processing
// GPLv2 license


// I know, I know... you expected much more from this code.

void glowPoint (int x, int y, color c) {
  pushStyle ();
  ellipseMode (CENTER);
  
  noStroke ();
  
  fill (c, 16);
  ellipse (x, y, 12, 12);
  
  fill (c, 32);
  ellipse (x, y, 8, 8);

  fill (c, 64);
  ellipse (x, y, 4, 4);

  stroke (c, 255);
  strokeWeight (1);
  point (x, y);
  
  popStyle ();
}
// ...it works, anyhow...
void glowRect (int x, int y, int w, int h, color c) {
  pushStyle ();
  
  stroke (c, 16);
  strokeWeight (12);
  rect (x, y, w, h);
  
  stroke (c, 32);
  strokeWeight (8);
  rect (x, y, w, h);

  stroke (c, 64);
  strokeWeight (4);
  rect (x, y, w, h);
  
  stroke (c, 255);
  strokeWeight (1);
  rect (x, y, w, h);
  
  popStyle ();
}
void glowLine (int x, int y, int a, int b, color c) {
  pushStyle ();
  
  stroke (c, 16);
  strokeWeight (12);
  line (x, y, a, b);
  
  stroke (c, 32);
  strokeWeight (8);
  line (x, y, a, b);

  stroke (c, 64);
  strokeWeight (4);
  line (x, y, a, b);
  
  stroke (c, 255);
  strokeWeight (1);
  line (x, y, a, b);
  
  popStyle ();
}
void glowTriangle (int x1, int y1, int x2, int y2, int x3, int y3, color c) {
  pushStyle ();
  
  stroke (c, 16);
  strokeWeight (12);
  triangle (x1, y1, x2, y2, x3, y3);
  
  stroke (c, 32);
  strokeWeight (8);
  triangle (x1, y1, x2, y2, x3, y3);

  stroke (c, 64);
  strokeWeight (4);
  triangle (x1, y1, x2, y2, x3, y3);
  
  stroke (c, 255);
  strokeWeight (1);
  triangle (x1, y1, x2, y2, x3, y3);
  
  popStyle ();
}
void glowQuad (int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color c) {
  pushStyle ();
  
  stroke (c, 16);
  strokeWeight (12);
  quad (x1, y1, x2, y2, x3, y3, x4, y4);
  
  stroke (c, 32);
  strokeWeight (8);
  quad (x1, y1, x2, y2, x3, y3, x4, y4);

  stroke (c, 64);
  strokeWeight (4);
  quad (x1, y1, x2, y2, x3, y3, x4, y4);
  
  stroke (c, 255);
  strokeWeight (1);
  quad (x1, y1, x2, y2, x3, y3, x4, y4);
  
  popStyle ();
}
void glowEllipse (int x1, int y1, int r_w, int r_h, color c) {
  pushStyle ();
  
  stroke (c, 16);
  strokeWeight (12);
  ellipse (x1, y1, r_w, r_h);
  
  stroke (c, 32);
  strokeWeight (8);
  ellipse (x1, y1, r_w, r_h);

  stroke (c, 64);
  strokeWeight (4);
  ellipse (x1, y1, r_w, r_h);
  
  stroke (c, 255);
  strokeWeight (1);
  ellipse (x1, y1, r_w, r_h);
  
  popStyle ();
}


void glowText (String s, int x, int y, int offset, color c) {
  pushStyle ();
  int hoff = offset/2;
  int doff = offset*2;
  
  fill (c, 8);
  text (s, x+doff, y+doff);
  text (s, x+doff, y-doff);
  text (s, x-doff, y+doff);
  text (s, x-doff, y-doff);
  
  text (s, x+offset, y+hoff);
  text (s, x+offset, y-hoff);
  text (s, x-hoff, y+offset);
  text (s, x-hoff, y-offset);
  
  fill (c, 9);
  text (s, x+offset, y+offset);
  text (s, x+offset, y-offset);
  text (s, x-offset, y+offset);
  text (s, x-offset, y-offset);
  
  text (s, x+offset, y+hoff);
  text (s, x+offset, y-hoff);
  text (s, x-hoff, y+offset);
  text (s, x-hoff, y-offset);


  fill (c, 25);
  text (s, x+hoff, y+hoff);
  text (s, x+hoff, y-hoff);
  text (s, x-hoff, y+hoff);
  text (s, x-hoff, y-hoff);

  fill (c, 255);
  text (s, x, y);
  popStyle ();
}

// I promise, newer, optimized, smarter, tidier version coming in the future....
