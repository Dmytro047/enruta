import 'package:enruta/common/footer.dart';
import 'package:enruta/common/header.dart';
import 'package:flutter/material.dart';

class TripDetailScreen extends StatelessWidget {
  const TripDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(
        titleText: 'Detalles del viaje',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Detalles del Viaje',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Punto de partida: Centro de los Heroes'),
                    Text('Destino: Av. 27 de Febrero'),
                    Text('Fecha del viaje: Domingo, 7 de Junio, 2024'),
                    Text('Duración del viaje: 2 horas 50 minutos'),
                    Text('Costo: 200RD'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Evaluar el viaje',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Escribe tu comentario aquí...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('Someter evaluación'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FooterWidget(),
    );
  }
}
