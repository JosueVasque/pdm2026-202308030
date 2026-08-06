import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const kFondo = Color(0xFF0A1420);
const kSuperficie = Color(0xFF122036);
const kBorde = Color(0xFF223349);
const kTexto = Color(0xFFEAF2FA);
const kMuted = Color(0xFF7D93AC);
const kAcento = Color(0xFF35C5C0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purificadora Yax',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kFondo,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kSuperficie,
          elevation: 0,
          title: const Text('Purificadora Yax'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Caja del Negocio',
                style: TextStyle(fontSize: 20, color: kTexto),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kSuperficie,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kBorde),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Efectivo total en caja',
                      style: TextStyle(fontSize: 12, color: kMuted),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Q 1,500.00',
                      style: TextStyle(fontSize: 26, color: kTexto),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kSuperficie,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kBorde),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reserva intocable para insumos',
                      style: TextStyle(fontSize: 12, color: kMuted),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Q 1,000.00',
                      style: TextStyle(fontSize: 26, color: kTexto),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '✓ Insumos de la semana seguros',
                      style: TextStyle(fontSize: 12, color: kAcento),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kAcento,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('APARTAR MI SUELDO'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
