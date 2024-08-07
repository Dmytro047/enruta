import 'package:enruta/common/footer.dart';
import 'package:enruta/screen/dashboard.dart';
import 'package:enruta/common/header.dart';
import 'package:enruta/screen/buyticket.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.person),
            SizedBox(width: 8),
            Text('Usuario'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSquareButton(
                          context, Icons.directions_bus, 'Viajes'),
                      const SizedBox(width: 16),
                      _buildSquareButton(context, Icons.event, 'Eventos'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSquareButton(
                          context, Icons.shopping_cart, 'Compras'),
                      const SizedBox(width: 16),
                      _buildSquareButton(context, Icons.person, 'Perfil'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.rocket),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquareButton(BuildContext context, IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DashboardScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Icon(icon, size: 40),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String label;

  const PlaceholderScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Center(
        child: Text('Esta es la pantalla de $label'),
      ),
    );
  }
}
