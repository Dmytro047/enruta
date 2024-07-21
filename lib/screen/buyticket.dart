import 'package:flutter/material.dart';

class BuyTicketScreen extends StatefulWidget {
  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicketScreen> {
  bool showPaymentSection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprar Boleto'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
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
            SizedBox(height: 20),
            Row(
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
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showPaymentSection = true;
                });
              },
              child: Text('Comprar boleto'),
            ),
            SizedBox(height: 10),
            if (showPaymentSection) CreditCardFormDialog(),
          ],
        ),
      ),
    );
  }
}

class CreditCardFormDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
