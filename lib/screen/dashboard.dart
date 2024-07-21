import 'package:enruta/common/footer.dart';
import 'package:enruta/common/header.dart';
import 'package:enruta/screen/buyticket.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HeaderWidget(
        titleText: 'Bienvenidos',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Desde',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Hacia',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.map),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 1; i <= 5; i++)
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Punto de partida: Centro de los Heroes'),
                          const Text('Destino: Av. 27 de Febrero'),
                          const Text('Tiempo faltante para partir: 20 minutos'),
                          const Text('Duración del viaje: 2 horas 50 minutos'),
                          const Text('Las paradas: Viaje directo'),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuyTicketScreen()));
                            },
                            child: const Text(
                              'Comprar boleto',
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}
