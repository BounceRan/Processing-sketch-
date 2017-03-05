class HorizontalLine {
  float x1, y, x2, x3, varb, lineSpeed;
  int num=1;
  float line_Color=100;

  boolean lineState=false;


  HorizontalLine(int lineWeight) {

    int line_Weight=lineWeight;


    strokeWeight(line_Weight);
    stroke(line_Color);

    x1=random(width);
    x3=random(width);
    y=random(height);
    lineSpeed=random(0.2, .7);
    if ( x1<x3) {
      x2=x1;
      num=0;
    } else if (x1>x3) {
      x2=x1;
      num=1;
    }
  }

  void updateInfo() {
    line_Color=100;
    stroke(line_Color);
    x1=random(width);
    x3=random(width);
    y=random(height);
    lineSpeed=random(0.2, .7);
    if ( x1<x3) {
      x2=x1;
      num=0;
    } else if (x1>x3) {
      x2=x1;
      num=1;
    }
  }

  void drawLine() {


    switch(num) {
    case 0:

      stroke(line_Color);
      line(x1, y, x2, y);

      x2=x2+lineSpeed;
      if (x2>x3) {
        x2=x3;
        if (line_Color<=255) {
          line_Color++;
          stroke(line_Color);
          if (line_Color>=255) {
            
            updateInfo();
          }
        }
      }

      break;

    case 1:
      stroke(line_Color);
      line(x1, y, x2, y);

      x2=x2-lineSpeed;
      if (x2<x3) {
        x2=x3;
        if (line_Color<=255) {
          line_Color++;
          stroke(line_Color);
          if (line_Color>=255) {
            
            updateInfo();
          }
        }
      }

      break;

    case 2:
      break;
    }
  }
}