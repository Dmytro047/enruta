import 'package:enruta/screen/dashboard.dart';
import 'package:enruta/screen/login.dart';
import 'package:enruta/screen/maps.dart';
import 'package:enruta/screen/mytickets.dart';
import 'package:enruta/screen/profile.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSquareButton(context, Icons.directions_bus,
                            'Rutas', const DashboardScreen()),
                        const SizedBox(width: 16),
                        _buildSquareButton(
                            context, Icons.map, 'Mapa', MapsScreen()),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSquareButton(context, Icons.confirmation_number,
                            'Mis boletos', const MyTicketsScreen()),
                        const SizedBox(width: 16),
                        _buildSquareButton(context, Icons.person, 'Perfil',
                            const ProfileScreen()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareButton(
      BuildContext context, IconData icon, String label, Widget child) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => child),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              elevation: 5,
            ),
            child: Icon(icon, size: 40, color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
