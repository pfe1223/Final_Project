//initialize variables to measure x-coordinate
int xPin = 5;
int xCoord1 = 0;
int xCoord2 = 0;
int xDiff = 0;

//initialize variables to measure y-coordinate
int yPin = A5;
int yCoord1 = 0;
int yCoord2 = 0;
int yDiff = 0;

//threshold to record data or not
int threshold = 20;

void setup(){
  Serial.begin(9600);
  pinMode(xPin, INPUT);
  pinMode(yPin, INPUT);
}

void loop(){
  //record original x and y-coordinates
  xCoord1 = analogRead(xPin);
  yCoord1 = analogRead(yPin);
  
  delay(50); //short delay to account for movement
  
  //record second x and y-coordinates
  xCoord2 = analogRead(xPin);
  yCoord2 = analogRead(yPin);
  
  //calculate differences in x and y movements
  xDiff = abs(xCoord2 - xCoord1);
  yDiff = abs(yCoord2 - yCoord1);
  if(xDiff > threshold && yDiff > threshold){
    Serial.print("X = ");
    Serial.println(xDiff);
    Serial.print("Y = ");
    Serial.println(yDiff);
    Serial.println();
  }
  delay(500);
}
