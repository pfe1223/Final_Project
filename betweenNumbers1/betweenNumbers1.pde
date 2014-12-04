String lines[] = loadStrings("motion.txt");
int transp = 80; //transparency

void setup(){
  size(800, 800, P3D);
  noStroke();
}

void draw(){
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  background(255);
  
  /*
  for(int i = 0; i < 6; i+=2){
    for(int j = 0; i <= 6; j+=2){
      rect(float(150+j*82), float(150+i*82), float(lines[i]), float(lines[i+1]));
    }
  }*/
  /*
  //row 1
  translate(0, 0, -100);
  fill(123, 0, 80, transp);
  rect(150, 150, 180, 30);
  translate(0,0,100);
  fill(78, 81, 132, transp);
  rect(232, 150, 90, 290);
  translate(0,0,-50);
  fill(50, 0, 230, transp);
  rect(312, 150, 300, 90);
  translate(0,0,75);
  fill(200, 100, 10, transp);
  rect(392, 150, 120, 380);
  translate(0,0,-60);
  fill(0, 5, 145, transp);
  rect(472, 150, 40, 100);
  translate(0,0,50);
  fill(200, 5, 5, transp);
  rect(552, 150, 80, 80);
  
  //row 2
  translate(0,0,-10);
  fill(255, 99, 20, transp);
  rect(150, 232, 200, 100);
  translate(0,0,40);
  fill(255, 20, 177, transp);
  rect(232, 232, 80, 180);
  translate(0,0,10);
  fill(177, 255, 20, transp);
  rect(312, 232, 50, 150);
  translate(0,0,-100);
  fill(99, 20, 255, transp);
  rect(392, 232, 200, 80);
  translate(0,0,150);
  fill(153, 0, 128, transp);
  rect(472, 232, 40, 90);
  translate(0,0,-30);
  fill(0, 128, 153, transp);
  rect(552, 232, 80, 140);
  
  //row 3
  translate(0,0,100);
  fill(0, 0, 102, transp);
  rect(150, 312, 40, 280);
  translate(0,0,-200);
  fill(51, 102, 0, transp);
  rect(232, 312, 100, 100);
  translate(0,0,100);
  fill(255, 255, 0, transp);
  rect(312, 312, 280, 180);
  translate(0,0,50);
  fill(0, 255, 255, transp);
  rect(392, 312, 40, 180);
  translate(0,0,-10);
  fill(255, 0, 128, transp);
  rect(472, 312, 100, 280);
  translate(0,0,100);
  fill(0, 128, 255, transp);
  rect(552, 312, 30, 120);
  
  //row 4
  translate(0,0,-125);
  fill(204, 102, 102, transp);
  rect(150, 392, 80, 80);
  translate(0,0,90);
  fill(153, 102, 204, transp);
  rect(232, 392, 80, 80);
  translate(0,0,-80);
  fill(26, 255, 0, transp);
  rect(312, 392, 80, 80);
  translate(0,0,-30);
  fill(230, 0, 255, transp);
  rect(392, 392, 80, 80);
  translate(0,0,90);
  fill(0, 51, 51, transp);
  rect(472, 392, 80, 80);
  translate(0,0,-50);
  fill(255, 204, 230, transp);
  rect(552, 392, 80, 80);
  
  //row 5
  translate(0,0,30);
  fill(112, 112, 112, transp);
  rect(150, 472, 80, 80);
  translate(0,0,10);
  fill(51, 51, 51, transp);
  rect(232, 472, 80, 80);
  translate(0,0,-100);
  fill(204, 204, 0, transp);
  rect(312, 472, 80, 80);
  translate(0,0,110);
  fill(0, 204, 204, transp);
  rect(392, 472, 80, 80);
  translate(0,0,-30);
  fill(102, 0, 0, transp);
  rect(472, 472, 80, 80);
  translate(0,0,-20);
  fill(0, 102, 0, transp);
  rect(552, 472, 80, 80);
  
  //row 6
  translate(0,0,10);
  fill(0, 224, 224, transp);
  rect(150, 552, 80, 80);
  translate(0,0,-20);
  fill(138, 184, 0, transp);
  rect(232,552, 80, 80);
  translate(0,0,100);
  fill(102, 0, 102, transp);
  rect(312, 552, 80, 80);
  translate(0,0,-200);
  fill(156, 79, 156, transp);
  rect(392, 552, 80, 80);
  translate(0,0,50);
  fill(79, 156, 79, transp);
  rect(472, 552, 80, 80);
  translate(0,0,70);
  fill(204, 51, 77, transp);
  rect(552, 552, 80, 80);
  */
}
