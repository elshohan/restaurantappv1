import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 100,
      title: Image.asset(
        'assets/images/logo.png',
        width: 150,
        height: 150,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person, color: Color(0xFFBF18D1)),
          onPressed: () {
            // ToDo
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
