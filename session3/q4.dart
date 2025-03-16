/*
4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name*/
import 'dart:io';

void main() {
  print("enter the name city");
  String nameCity = stdin.readLineSync()!;
  dataWeather(nameCity);
}

void dataWeather(String city) {
  Map<dynamic, dynamic> weather = {
    "Cairo": {
      "temperation": 50,
      "humidity": 20,
    },
    "newyork": {
      "temperation": 40,
      "humidity": 10,
    },
    'Tokyo': {
      'temperature': 25,
      'humidity': 70,
    },
  };
  print("the temperature of $city is :${weather[city]['temperation']}");
  print("the humidity of $city is :${weather[city]['humidity']}");
}
