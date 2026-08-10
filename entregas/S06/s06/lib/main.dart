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
const kAcentoFondo = Color(0xFF0F3D3B);

const kFig = TextStyle(fontFamily: 'monospace');

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
        textTheme: const TextTheme().apply(
          bodyColor: kTexto,
          displayColor: kTexto,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kSuperficie,
          elevation: 0,
          titleSpacing: 16,
          title: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: kAcentoFondo,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.water_drop, color: kAcento, size: 18),
              ),
              const SizedBox(width: 10),
              const Text(
                'Purificadora Yax',
                style: TextStyle(
                  color: kTexto,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Caja del Negocio',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kTexto,
                  ),
                ),
                const SizedBox(height: 20),
                tarjetaInfo(
                  icono: Icons.payments_outlined,
                  titulo: 'EFECTIVO TOTAL EN CAJA',
                  monto: 'Q 1,500.00',
                ),
                const SizedBox(height: 14),
                tarjetaInfo(
                  icono: Icons.inventory_2_outlined,
                  titulo: 'RESERVA INTOCABLE PARA INSUMOS',
                  monto: 'Q 1,000.00',
                  nota: 'Insumos de la semana seguros',
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kAcento,
                      foregroundColor: kFondo,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_downward_rounded, size: 18),
                        SizedBox(width: 8),
                        Text(
                          'APARTAR MI SUELDO',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.6,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tarjetaInfo({
  required IconData icono,
  required String titulo,
  required String monto,
  String? nota,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: kSuperficie,
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: kBorde),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 12,
          offset: const Offset(0, 6),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: kAcentoFondo,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icono, color: kAcento, size: 18),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 10.5,
                  color: kMuted,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                monto,
                style: kFig.copyWith(
                  fontSize: 27,
                  color: kTexto,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (nota != null) ...[
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.check_circle, size: 14, color: kAcento),
                    const SizedBox(width: 5),
                    Text(
                      nota,
                      style: const TextStyle(
                        fontSize: 12,
                        color: kAcento,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    ),
  );
}
