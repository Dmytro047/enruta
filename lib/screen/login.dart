import 'package:enruta/screen/dashboard.dart';
import 'package:enruta/screen/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 146, 202,
                      249), // Puedes ajustar el color del logo aquí
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 75,
                  ),
                  onPressed: () {},
                ),
                // Aquí puedes agregar un widget de Image si tienes un logo específico
                // child: Image.asset('assets/logo.png'),
              ),

              const SizedBox(height: 30),

              // Input de nombre de usuario
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Nombre de usuario',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 15),

              // Input de contraseña
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 15),

              // Botón de Logearse
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white, // Texto del botón blanco
                ),
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  // Validar que los campos no estén vacíos
                  if (username.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Por favor, llene todos los campos')),
                    );
                    return;
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()));
                },
                child: const Text('Logearse'),
              ),

              const SizedBox(height: 10),

              // Botón de Registrarse
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, // Texto del botón negro
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: const Text('Registrarse'),
              ),

              const SizedBox(height: 10),

              // Botón de Olvidé mi contraseña
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, // Texto del botón negro
                ),
                onPressed: () {
                  // Acción al presionar el botón de Olvidé mi contraseña
                },
                child: const Text('Olvidé mi contraseña'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
