import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: FlutterLogo(
          size: 250,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
              opaque: false,
              pageBuilder: ((context, animation, secondaryAnimation) {
                return FadeTransition(
                  opacity: animation,
                  child: const MyMaterialMenu(value: 1),
                );
              })));
          // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //   return const MyMaterialMenu(
          //     value: 1,
          //   );
          // }));
        },
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class MyMaterialMenu extends StatelessWidget {
  const MyMaterialMenu({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Material(
        color: Colors.black.withOpacity(0.1),
        child: TweenAnimationBuilder<double>(
          duration: const Duration(
            milliseconds: 400,
          ),
          tween: Tween(begin: 1, end: 0),
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(100.0 * value, 0.0),
              child: child!,
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MaterialButton(
                child: Text('Opcion1'),
                onPressed: () {},
                color: Colors.pink,
              ),
              MaterialButton(
                child: Text('Opcion2'),
                onPressed: () {},
                color: Colors.pink,
              ),
              MaterialButton(
                child: Text('Opcion3'),
                onPressed: () {},
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }
}
