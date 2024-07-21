import 'package:enruta/screen/profile.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const HeaderWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 2, 55, 152),
      title: Text(titleText),
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
        const Text('Marcos Martinez'),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
