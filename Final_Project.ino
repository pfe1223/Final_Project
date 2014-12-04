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

//counter for the number of data pairs collected
int dataCount = 0;

void setup(){
  Serial.begin(9600);
  pinMode(xPin, INPUT);
  pinMode(yPin, INPUT);
}

void loop(){
  if(dataCount < 123){ //this will keep data collection to 122 data points
  
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
    if(xDiff > threshold || yDiff > threshold){
      Serial.println(xDiff);
      Serial.println(yDiff);
      dataCount++;
    }
  }
}
