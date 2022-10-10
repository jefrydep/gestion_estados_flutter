import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () => {},
            color: Colors.orangeAccent,
            child: const Text('Establecer usuario'),
          ),
          MaterialButton(
            onPressed: () => {},
            color: Colors.orangeAccent,
            child: const Text('Cambiar edad'),
          ),
          MaterialButton(
            onPressed: () => {},
            color: Colors.orangeAccent,
            child: const Text('Establecer usuario'),
          )
        ],
      ),
    ));
  }
}
