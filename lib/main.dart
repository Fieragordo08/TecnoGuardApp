import 'package:flutter/material.dart';
import 'package:tecnoguarda/registro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        cardColor: Colors.red,
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  icon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Agregar lógica de inicio de sesión aquí
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).cardColor,
                  onPrimary: Colors.black,
                ),
                child: Text('Iniciar sesión'),
              ),
              SizedBox(height: 12.0),
              TextButton(
                onPressed: () {
                  // Navegar a la pantalla de registro y reemplazar la pantalla de inicio de sesión
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => RegistroPage()),
                  );
                },
                child: Text('Crear cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}