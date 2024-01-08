import processing.serial.*;

Serial myPort;
int constantMultiplier = 10; // Define your constant multiplier here

void setup() {
  println(Serial.list());
  // Change the 0 to the index of your serial port
  myPort = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
  if (myPort.available() > 0) {
    String val = myPort.readStringUntil('\n');
    if (val != null) {
      val = trim(val);
      try {
        int sensorReading = Integer.parseInt(val);
        int modifiedValue = sensorReading * constantMultiplier;
        println("Modified Value: " + modifiedValue);
      } catch (NumberFormatException e) {
        println("Invalid Data");
      }
    }
  }
}
