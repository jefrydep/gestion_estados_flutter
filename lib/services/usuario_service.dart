import 'package:flutter/cupertino.dart';
import 'package:forms_app/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  bool get existeUsuario => _usuario != null ? true : false;
  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion() {
    _usuario?.profesiones.add('Profesion ${_usuario!.profesiones.length + 1}');
    notifyListeners();
  }
}
