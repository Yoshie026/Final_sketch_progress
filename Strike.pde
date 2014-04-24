class Strike {
  color r, g, b[];
  int Xpos;
  int Ypos;
  int x;
  int y; 
  Strike(color r, color g, color b, int Xpos, int Ypos, int x, int y) {
  }
  void pop() {
    fill(r, g, h);
    line(290, 220, 387, 168);
    line(290, 220, 361, 290);
    line(359, 290, 326, 352);
    line(416, 269, 326, 352);
    line(386, 167, 344, 240);
    line(344, 239, 416, 269);
    strokeWeight(1);
  }
}
