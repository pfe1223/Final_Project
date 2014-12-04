int transp = 100; //transparency
BufferedReader reader; //alows me to read the text file
String line = "a"; //hold a line of data read from the text file
String[] numbers = new String[0]; //array to hold the values from the text file
color c1 = color(178, 18, 18);
color c2 = color(255, 252, 25);
color c3 = color(255, 0, 0);
color c4 = color(20, 133, 204);
color c5 = color(9, 113, 178);
color c6 = color(255, 10, 148);
color c7 = color(163, 2, 255);
color c8 = color(8, 255, 37);
color c9 = color(255, 74, 21);
color c10 = color(24, 255, 249);
int xLocation = 200; //left margin of the rectangles
int yLocation = 50; //top margin for the rectangles
int row; //row number
int colorCount; //determines which color
float scale = 2.1; //factor by which to scale up the rectangles
int distance = 50; //distance between rectangles
int i = 0; //index to count through the array of numbers

void setup(){
  reader = createReader("data1.txt"); //open the file with accelerometer data
  size(800, 800, P3D); //set size of the output
  while(line != null){ //this loops puts the data into the array
    try {
    line = reader.readLine();
    } catch (IOException e) {
    e.printStackTrace();
    line = null;
    }
    if(line != null){
      numbers = append(numbers, line);
    }
  }
  println(numbers.length); //test to see if the loop above worked
}

void draw(){
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  background(255);
  noStroke();
  
  //row 1
  row = 0;
  translate(0, 0, -10);
  fill(c10, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[0])*scale, float(numbers[1])*scale);
  
  translate(0, 0, 30);
  fill(c2, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[2])*scale, float(numbers[3])*scale);
  
  translate(0, 0, -40);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[4])*scale, float(numbers[5])*scale);
  
  translate(0, 0, 30);
  fill(c1, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[6])*scale, float(numbers[7])*scale);
  
  translate(0, 0, -10);
  fill(c4, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[8])*scale, float(numbers[9])*scale);
  
  translate(0, 0, 90);
  fill(c6, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[10])*scale, float(numbers[11])*scale);
  
  //row 2
  row = 1;
  translate(0, 0, -30);
  fill(c1, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[12])*scale, float(numbers[13])*scale);
  
  translate(0, 0, 20);
  fill(c9, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[14])*scale, float(numbers[15])*scale);
  
  translate(0, 0, -10);
  fill(c8, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[16])*scale, float(numbers[17])*scale);
  
  translate(0, 0, 50);
  fill(c4, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[18])*scale, float(numbers[19])*scale);
  
  translate(0, 0, -20);
  fill(c3, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[20])*scale, float(numbers[21])*scale);
  
  translate(0, 0, 40);
  fill(c9, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[22])*scale, float(numbers[23])*scale);
  
  //row 3
  row = 2;
  translate(0, 0, -10);
  fill(c10, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[24])*scale, float(numbers[25])*scale);
  
  translate(0, 0, 30);
  fill(c2, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[26])*scale, float(numbers[27])*scale);
  
  translate(0, 0, -40);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[28])*scale, float(numbers[29])*scale);
  
  translate(0, 0, 30);
  fill(c1, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[30])*scale, float(numbers[31])*scale);
  
  translate(0, 0, -10);
  fill(c4, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[32])*scale, float(numbers[33])*scale);
  
  translate(0, 0, 90);
  fill(c6, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[34])*scale, float(numbers[35])*scale);
  
  
  //row 4
  row = 3;
  translate(0, 0, -70);
  fill(c8, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[36])*scale, float(numbers[37])*scale);
  
  translate(0, 0, -10);
  fill(c2, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[38])*scale, float(numbers[39])*scale);
  
  translate(0, 0, 30);
  fill(c9, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[40])*scale, float(numbers[41])*scale);
  
  translate(0, 0, 10);
  fill(c3, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[42])*scale, float(numbers[43])*scale);
  
  translate(0, 0, -50);
  fill(c4, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[44])*scale, float(numbers[45])*scale);
  
  translate(0, 0, 50);
  fill(c6, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[46])*scale, float(numbers[47])*scale);
  
  //row 5
  row = 4;
  translate(0, 0, -10);
  fill(c10, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[48])*scale, float(numbers[49])*scale);
  
  translate(0, 0, 20);
  fill(c2, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[50])*scale, float(numbers[51])*scale);
  
  translate(0, 0, -40);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[52])*scale, float(numbers[53])*scale);
  
  translate(0, 0, 70);
  fill(c1, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[54])*scale, float(numbers[55])*scale);
  
  translate(0, 0, -40);
  fill(c4, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[56])*scale, float(numbers[57])*scale);
  
  translate(0, 0, 60);
  fill(c6, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[58])*scale, float(numbers[59])*scale);
  
  //row 6
  row = 5;
  
  
  //row 6
  row = 5;
  translate(0, 0, -20);
  fill(c3, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[60])*scale, float(numbers[61])*scale);
  
  translate(0, 0, 20);
  fill(c8, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[62])*scale, float(numbers[63])*scale);
  
  translate(0, 0, -10);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[64])*scale, float(numbers[65])*scale);
  
  translate(0, 0, 70);
  fill(c2, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[66])*scale, float(numbers[67])*scale);
  
  translate(0, 0, -30);
  fill(c10, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[68])*scale, float(numbers[69])*scale);
  
  translate(0, 0, -10);
  fill(c8, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[70])*scale, float(numbers[71])*scale);
  
  //row 7
  row = 6;
  translate(0, 0, 10);
  fill(c9, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[72])*scale, float(numbers[73])*scale);
  
  translate(0, 0, -30);
  fill(c3, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[74])*scale, float(numbers[75])*scale);
  
  translate(0, 0, 60);
  fill(c4, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[76])*scale, float(numbers[77])*scale);
  
  translate(0, 0, -40);
  fill(c7, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[78])*scale, float(numbers[79])*scale);
  
  translate(0, 0, -10);
  fill(c10, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[80])*scale, float(numbers[81])*scale);
  
  translate(0, 0, 90);
  fill(c8, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[82])*scale, float(numbers[83])*scale);
  
  
  //row 8
  row = 7;
  translate(0, 0, -80);
  fill(c8, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[84])*scale, float(numbers[85])*scale);
  
  translate(0, 0, 10);
  fill(c7, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[86])*scale, float(numbers[87])*scale);
  
  translate(0, 0, -20);
  fill(c3, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[88])*scale, float(numbers[89])*scale);
  
  translate(0, 0, 30);
  fill(c5, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[90])*scale, float(numbers[91])*scale);
  
  translate(0, 0, -40);
  fill(c1, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[92])*scale, float(numbers[93])*scale);
  
  translate(0, 0, 40);
  fill(c9, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[94])*scale, float(numbers[95])*scale);
  
  //row 9
  row = 8;
  translate(0, 0, 10);
  fill(c10, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[96])*scale, float(numbers[97])*scale);
  
  translate(0, 0, -20);
  fill(c2, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[98])*scale, float(numbers[99])*scale);
  
  translate(0, 0, 30);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[100])*scale, float(numbers[101])*scale);
  
  translate(0, 0, -30);
  fill(c1, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[102])*scale, float(numbers[103])*scale);
  
  translate(0, 0, -10);
  fill(c4, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[104])*scale, float(numbers[105])*scale);
  
  translate(0, 0, 50);
  fill(c6, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[106])*scale, float(numbers[107])*scale);
  
  //row 10
  row = 9;
  translate(0, 0, -100);
  fill(c8, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[108])*scale, float(numbers[109])*scale);
  
  translate(0, 0, 10);
  fill(c4, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[110])*scale, float(numbers[111])*scale);
  
  translate(0, 0, -30);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[112])*scale, float(numbers[113])*scale);
  
  translate(0, 0, 20);
  fill(c3, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[114])*scale, float(numbers[115])*scale);
  
  translate(0, 0, -40);
  fill(c10, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[116])*scale, float(numbers[117])*scale);
  
  translate(0, 0, 10);
  fill(c8, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[118])*scale, float(numbers[119])*scale);
  
  //row 11
  row = 10;
  translate(0, 0, -100);
  fill(c1, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[108])*scale, float(numbers[109])*scale);
  
  translate(0, 0, 40);
  fill(c3, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[110])*scale, float(numbers[111])*scale);
  
  translate(0, 0, -10);
  fill(c10, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[112])*scale, float(numbers[113])*scale);
  
  translate(0, 0, 20);
  fill(c7, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[114])*scale, float(numbers[115])*scale);
  
  translate(0, 0, -50);
  fill(c2, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[116])*scale, float(numbers[117])*scale);
  
  translate(0, 0, 30);
  fill(c9, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[118])*scale, float(numbers[119])*scale);
  
  //row 12
  row = 11;
  translate(0, 0, -100);
  fill(c8, transp);
  rect(xLocation+distance*0, yLocation+distance*row, float(numbers[108])*scale, float(numbers[109])*scale);
  
  translate(0, 0, -10);
  fill(c4, transp);
  rect(xLocation+distance*1, yLocation+distance*row, float(numbers[110])*scale, float(numbers[111])*scale);
  
  translate(0, 0, 40);
  fill(c7, transp);
  rect(xLocation+distance*2, yLocation+distance*row, float(numbers[112])*scale, float(numbers[113])*scale);
  
  translate(0, 0, -50);
  fill(c3, transp);
  rect(xLocation+distance*3, yLocation+distance*row, float(numbers[114])*scale, float(numbers[115])*scale);
  
  translate(0, 0, 20);
  fill(c10, transp);
  rect(xLocation+distance*4, yLocation+distance*row, float(numbers[116])*scale, float(numbers[117])*scale);
  
  translate(0, 0, -10);
  fill(c8, transp);
  rect(xLocation+distance*5, yLocation+distance*row, float(numbers[118])*scale, float(numbers[119])*scale);
    
}
