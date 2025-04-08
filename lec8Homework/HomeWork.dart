/*
Exercise 2: Smart Home Automation
A smart home system controls different devices such as lights, air conditioners, and security
cameras.
Each device has an on and off functionality.
Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
The system should allow multiple devices to be controlled together.
Question:
How would you design a system where different devices share common functionalities but also have
unique behaviors?*/
void main() {
  Light light1 = Light();
  light1.trunOn();
  light1.trunOff();
  light1.ConterLigth(70);
  AirConditioner conditioners = AirConditioner();
  conditioners.trunOn();
  conditioners.trunOff();
  conditioners.setTemperature(45);
  SecurityCamera Camera = SecurityCamera();
  Camera.trunOn();
  Camera.trunOff();

  Camera.detectMotion();
}

abstract class SmartDevice {
  void trunOn();
  void trunOff();
}

class Light extends SmartDevice {
  @override
  void trunOn() {
    print("Light is On");
  }

  @override
  void trunOff() {
    print("Light is OFF");
  }

  void ConterLigth(int controle) {
    print(" the controle of Ligth  $controle %");
  }
}

class AirConditioner extends SmartDevice {
  @override
  void trunOn() {
    print("AirConditioner  is On");
  }

  @override
  void trunOff() {
    print("AirConditioner  is OFF");
  }

  void setTemperature(int Temperature) {
    print(" the Temperature of AirConditioner  $Temperature %");
  }
}

class SecurityCamera extends SmartDevice {
  @override
  void trunOn() {
    print("SecurityCamera   is On");
  }

  @override
  void trunOff() {
    print("SecurityCamera   is OFF");
  }

  void detectMotion() {
    print(" the SecurityCamera detectMotion");
  }
}
