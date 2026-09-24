import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marcador Deportivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MarcadorScreen(),
    );
  }
}

class MarcadorScreen extends StatefulWidget {
  const MarcadorScreen({super.key});

  @override
  State<MarcadorScreen> createState() => _MarcadorScreenState();
}

class _MarcadorScreenState extends State<MarcadorScreen> {
  int puntosA = 0;
  int puntosB = 0;

  String nombreA = 'Equipo A';
  String nombreB = 'Equipo B';

  final Color colorNeutro = Colors.grey.shade200;
  final Color colorGanador = Colors.green.shade300;

  void sumarA() {
    setState(() {
      puntosA = puntosA + 1;
    });
  }

  void restarA() {
    setState(() {
      if (puntosA > 0) {
        puntosA = puntosA - 1;
      }
    });
  }

  void sumarB() {
    setState(() {
      puntosB = puntosB + 1;
    });
  }

  void restarB() {
    setState(() {
      if (puntosB > 0) {
        puntosB = puntosB - 1;
      }
    });
  }

  void reiniciar() {
    setState(() {
      puntosA = 0;
      puntosB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    String mensaje;
    if (puntosA == puntosB) {
      mensaje = 'Empate';
    } else if (puntosA > puntosB) {
      mensaje = 'Va ganando $nombreA';
    } else {
      mensaje = 'Va ganando $nombreB';
    }

    Color colorA = colorNeutro;
    Color colorB = colorNeutro;

    if (puntosA > puntosB) {
      colorA = colorGanador;
    } else if (puntosB > puntosA) {
      colorB = colorGanador;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Marcador Deportivo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorA,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Column(
                      children: [
                        Text(nombreA, style: const TextStyle(fontSize: 18)),
                        const SizedBox(height: 8),
                        Text('$puntosA', style: const TextStyle(fontSize: 40)),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: restarA,
                              child: const Text('−1'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: sumarA,
                              child: const Text('+1'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorB,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Column(
                      children: [
                        Text(nombreB, style: const TextStyle(fontSize: 18)),
                        const SizedBox(height: 8),
                        Text('$puntosB', style: const TextStyle(fontSize: 40)),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: restarB,
                              child: const Text('−1'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: sumarB,
                              child: const Text('+1'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              mensaje,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: reiniciar,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
