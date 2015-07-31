// glowstuff, by 220
// v1.0, for processing
// GPLv2 license


// I know, I know... you expected much more from this code.
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
// ...it works, anyhow...
void glowBox (int x, int y, int w, int h, color c) {
    
    pushStyle ();
    stroke (c, 8);
    strokeWeight (_lw*2);
    line (x1, y1, x2, y2);
    
    stroke (c, 16);
    strokeWeight (_lw);
    line (x1, y1, x2, y2);
    
    stroke (c, 32);
    strokeWeight (_lw/2);
    line (x1, y1, x2, y2);

    stroke (c, 255);
    strokeWeight (_lw/_lw);
    line (x1, y1, x2, y2);
    popStyle ();
}
void glowPoint (int x, int y, color c, color spread) {
  pushStyle ();
  ellipseMode (CENTER);
  
  fill (c, 20);
  ellipse (x, y, spread, spread);
  
  fill (c, 35);
  ellipse (x, y, spread/2, spread/2);

  stroke (c);
  strokeWeight (1);
  point (x, y);
  
  popStyle ();
}
// I promise, newer, optimized, smarter, tidier version coming in the future....
