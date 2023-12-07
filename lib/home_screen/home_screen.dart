import 'package:dice_task/controller/mycontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final diceprovider = Provider.of<MyController>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 83, 34),
      body: Center(
        child: InkWell(
          onTap: () {
            Provider.of<MyController>(context, listen: false).generate();
          },
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset(
                diceprovider.diceImages[diceprovider.randomNumber],
                fit: BoxFit.cover),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<MyController>(context, listen: false).generate();
          print(Provider.of<MyController>(context, listen: false).generate());
        },
        child: Icon(Icons.gamepad),
        backgroundColor: Color.fromARGB(255, 45, 127, 47),
      ),
    );
  }
}
