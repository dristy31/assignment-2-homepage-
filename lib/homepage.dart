import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color purple = Color(0xFF673AB7);
  static const Color mint = Color(0xFF69F0AE);

  @override
  Widget build(BuildContext context) {
    final greenStyle = ElevatedButton.styleFrom(
      backgroundColor: mint,
      foregroundColor: Colors.white,
      elevation: 4,
      shape: const StadiumBorder(
        side: BorderSide(color: Color(0xFFE57373), width: 1.2),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple,
        foregroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text(
          'Homepage',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'cursive',
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: greenStyle,
                child: const Text('Text Button'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: greenStyle.copyWith(
                  elevation: const WidgetStatePropertyAll(1),
                ),
                child: const Text('Elevated Button'),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: purple,
                  shape: const StadiumBorder(),
                  side: const BorderSide(color: Colors.grey),
                ),
                child: const Text('Outlined Button'),
              ),
              IconButton(icon: const Icon(Icons.login), onPressed: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mint,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: const Icon(Icons.add),
      ),
    );
  }
}
