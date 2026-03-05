import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const SizedBox(height: 10),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          const SizedBox(height: 10),
          TextButton(onPressed: () {}, child: const Text('Text')),
        ],
      ),
    );
  }
}
