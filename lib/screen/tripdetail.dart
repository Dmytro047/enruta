import 'package:enruta/common/footer.dart';
import 'package:enruta/common/header.dart';
import 'package:flutter/material.dart';

class TripDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(
        titleText: 'Detalles del viaje',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Detalles del Viaje',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Punto de partida: Santo Domingo'),
                    Text('Destino: La Romana'),
                    Text('Fecha del viaje: Domingo, 7 de Junio, 2024'),
                    Text('Duración del viaje: 2 horas 50 minutos'),
                    Text('Costo: 200RD'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Evaluar el viaje',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Escribe tu comentario aquí...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Someter evaluación'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}
