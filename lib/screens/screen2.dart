import 'package:flutter/material.dart';
import 'package:forms_app/models/usuario.dart';
import 'package:forms_app/services/usuario_service.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newUsser = Usuario(
        nombre: 'godofredo',
        edad: 23,
        profesiones: ['ing software', 'movil developer']);
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () => {usuarioService.usuario = newUsser},
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
