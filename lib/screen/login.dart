import 'package:enruta/screen/dashboard.dart';
import 'package:enruta/screen/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Puedes ajustar el color del logo aquí
                ),
                // Aquí puedes agregar un widget de Image si tienes un logo específico
                // child: Image.asset('assets/logo.png'),
              ),

              SizedBox(height: 30),

              // Input de nombre de usuario
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              // Input de contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              // Botón de Logearse
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()));
                },
                child: Text('Logearse'),
              ),

              SizedBox(height: 10),

              // Botón de Registrarse
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: Text('Registrarse'),
              ),

              SizedBox(height: 10),

              // Botón de Olvidé mi contraseña
              TextButton(
                onPressed: () {
                  // Acción al presionar el botón de Olvidé mi contraseña
                },
                child: Text('Olvidé mi contraseña'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
