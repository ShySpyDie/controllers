import 'package:controllers_practice/presentation/controller.dart';
import 'package:controllers_practice/presentation/controller_a.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AddCount controller;
  final ButtonController controllerA;

  const Home({
    super.key,
    required this.controller,
    required this.controllerA,
  });

  @override
  Widget build(BuildContext context) {
    // final AddCount controller = AddCount();
    // final ButtonController controllerA = ButtonController();

    void onTap() {
      controller.count();
      controllerA.rotation();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('clicker'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
            color: Colors.amber,
          ),
          child: SizedBox(
            height: 400.0,
            width: 300.0,
            child: Center(
              child: AnimatedBuilder(
                animation: controller,
                builder: (_, __) {
                  return Text(
                    controller.getI.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  );
                },
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTap,
        backgroundColor: Colors.amber,
        child: AnimatedBuilder(
          animation: controllerA,
          builder: (_, __) {
            // return Transform.rotate(angle: controllerA.getJ, child: Icon(Icons.add));
            return RotationTransition(
              turns: AlwaysStoppedAnimation(
                controllerA.getJ / 360,
              ),
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
