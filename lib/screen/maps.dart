import 'package:enruta/common/footer.dart';
import 'package:enruta/common/header.dart';
import 'package:enruta/screen/tripdetail.dart';
import 'package:flutter/material.dart';

class MapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/maps.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Destino',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16),
                    minimumSize: Size(48, 48),
                  ),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
