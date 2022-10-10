import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('First Screen'),
      ),
      body: const _UserInformation(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.next_plan),
          onPressed: () => {Navigator.pushNamed(context, 'screen2')}),
    );
  }
}

class _UserInformation extends StatelessWidget {
  const _UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 20,
          ),
          Text(
            'General',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('Nombre'),
          ),
          ListTile(
            title: Text('edad'),
          ),
          Text(
            'Profesionales',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('Profesion1'),
          ),
          ListTile(
            title: Text('Profesion2'),
          ),
          ListTile(
            title: Text('Profesion3'),
          ),
        ],
      ),
    );
  }
}
