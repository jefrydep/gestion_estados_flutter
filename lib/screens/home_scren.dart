import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const __Baner(),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: const [
            Text(
              'Gestion de estados en Flutter',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        InkWell(
            splashColor: Colors.black,
            hoverColor: const Color.fromARGB(255, 21, 194, 27),
            onTap: () => {Navigator.pushNamed(context, 'screen1')},
            child: const __BottonStart())
      ],
    ));
  }
}

class __BottonStart extends StatelessWidget {
  const __BottonStart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 45,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.orangeAccent, borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'comenzar',
        style: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class __Baner extends StatelessWidget {
  const __Baner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
          borderRadius:
              BorderRadiusDirectional.vertical(bottom: Radius.circular(50)),
          color: Color.fromARGB(255, 226, 118, 30)),
    );
  }
}
