import 'package:flutter/material.dart';
import 'package:flutter_animations_course/screens/car_screen.dart';
import 'package:flutter_animations_course/screens/fifth_screen.dart';
import 'package:flutter_animations_course/screens/first_screen.dart';
import 'package:flutter_animations_course/screens/fourth_screen.dart';
import 'package:flutter_animations_course/screens/home_screen.dart';
import 'package:flutter_animations_course/screens/second_screen.dart';
import 'package:flutter_animations_course/screens/third_screen.dart';
import 'package:flutter_animations_course/utils/constans.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleOne());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwo());
      case thirdScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThree());
      case fourthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFourth());
      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFive());
      case carRoute:
        return MaterialPageRoute(builder: (_) => CarScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
