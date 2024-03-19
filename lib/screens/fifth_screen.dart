import 'package:flutter/material.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  _ExampleFiveState createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  late Animation borderSizeAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(controller);

    sizeAnimation = Tween<double>(begin: 100.0, end: 300.0).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn,
    ))..addListener(() {
      print("CONTROLLER VALUE: ${controller.value}");
    });
    borderSizeAnimation = Tween<double>(begin: 5.0, end: 50.0).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);

    //controller.forward();

    //controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(borderSizeAnimation.value),
          ),
        ),
      ),
    );
  }
}