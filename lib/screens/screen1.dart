import 'package:flutter/material.dart';
import 'package:forms_app/models/usuario.dart';
import 'package:forms_app/services/usuario_service.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('First Screen'),
      ),
      body: usuarioService.existeUsuario
          ? _UserInformation(
              usuario: usuarioService.usuario!,
            )
          : Center(
              child: Text('no hay usuario seleccionado'),
            ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.next_plan),
          onPressed: () => {Navigator.pushNamed(context, 'screen2')}),
    );
  }
}

class _UserInformation extends StatelessWidget {
  final Usuario usuario;
  const _UserInformation({
    Key? key,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'General',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('edad : ${usuario.edad}'),
          ),
          Text(
            'Profesionales',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('profesion 1 : ${usuario.profesiones[1]}'),
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
