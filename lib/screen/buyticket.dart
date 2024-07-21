import 'package:flutter/material.dart';

class BuyTicketScreen extends StatefulWidget {
  const BuyTicketScreen({super.key});

  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicketScreen> {
  bool showPaymentSection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comprar Boleto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Punto de partida: Santo Domingo'),
                  Text('Destino: La Romana'),
                  Text('Tiempo faltante para partir: 20 minutos'),
                  Text('Duración del viaje: 2 horas 50 minutos'),
                  Text('Las paradas: Viaje directo'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Precio de boleto:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '200RD',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showPaymentSection = true;
                });
              },
              child: const Text('Comprar boleto'),
            ),
            const SizedBox(height: 10),
            if (showPaymentSection) CreditCardFormDialog(),
          ],
        ),
      ),
    );
  }
}

class CreditCardFormDialog extends StatelessWidget {
  const CreditCardFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Text('Ingrese los datos de su tarjeta de crédito'),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Número de tarjeta',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Fecha de expiración (MM/YY)',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Código de seguridad',
            ),
          ),
        ],
      )
    ]);
  }
}
