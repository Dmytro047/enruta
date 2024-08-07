import 'package:enruta/screen/dashboard.dart';
import 'package:enruta/screen/mainmenu.dart';
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
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 146, 202, 249),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 75,
                  ),
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: 30),

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

              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // String username = _usernameController.text;
                  // String password = _passwordController.text;

                  // if (username.isEmpty || password.isEmpty) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //         content: Text('Por favor, llene todos los campos')),
                  //   );
                  //   return;
                  // }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen()));
                  //builder: (context) => const DashboardScreen()));
                },
                child: const Text('Logearse'),
              ),

              const SizedBox(height: 10),

              // Botón de Registrarse
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: const Text('Registrarse'),
              ),

              const SizedBox(height: 10),

              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text('Olvidé mi contraseña'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
