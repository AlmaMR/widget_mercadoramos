import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),
      body: const _CardsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: const [
            _ElevatedCard(),
            SizedBox(height: 20),
            _FilledCard(),
            SizedBox(height: 20),
            _OutlinedCard(),
          ],
        ),
      ),
    );
  }
}

class _ElevatedCard extends StatelessWidget {
  const _ElevatedCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.flight_takeoff),
            title: Text('Elevated Card'),
            subtitle: Text(
              'Esta es la tarjeta por defecto en Flutter. Usa sombras (elevation) para separarse del fondo.',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: const Text('Aceptar'), onPressed: () {}),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilledCard extends StatelessWidget {
  const _FilledCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.indigo.withOpacity(0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Filled Card'),
            subtitle: Text(
              'No tiene sombra. Su elevación es 0 y se distingue por tener un color de fondo diferente.',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: const Text('Aceptar'), onPressed: () {}),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class _OutlinedCard extends StatelessWidget {
  const _OutlinedCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.border_outer),
            title: Text('Outlined Card'),
            subtitle: Text(
              'Al igual que el OutlinedButton, no tiene elevación pero tiene un borde marcado que la define.',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: const Text('Aceptar'), onPressed: () {}),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
