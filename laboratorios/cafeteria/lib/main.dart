import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiPedido(),
    );
  }
}

class MiPedido extends StatefulWidget {
  const MiPedido({super.key});

  @override
  State<MiPedido> createState() => _MiPedidoState();
}

class _MiPedidoState extends State<MiPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi pedido'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Pantalla de pedidos')),
    );
  }
}
