import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const kFondo = Colors.grey;
const kTexto = Colors.black87;
const kMuted = Colors.grey;
const kBorde = Colors.black12;
const kVerde = Colors.lightGreen;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Add money',
      theme: ThemeData(scaffoldBackgroundColor: kFondo[100]),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kFondo[100],
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios_new, color: kTexto, size: 18),
          title: Text(
            'Add money',
            style: TextStyle(
              color: kTexto,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select card',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kTexto,
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      tarjeta(
                        color: kVerde,
                        textoColor: kTexto,
                        etiqueta: 'Debit card',
                        numero: '•••• 4568',
                        marca: 'Mastercard',
                      ),
                      SizedBox(width: 12),
                      tarjeta(
                        color: kTexto,
                        textoColor: Colors.white,
                        etiqueta: 'Credit card',
                        numero: '•••• 2478',
                        marca: 'VISA',
                      ),
                      SizedBox(width: 12),
                      tarjeta(
                        color: kMuted.shade200,
                        textoColor: kMuted,
                        etiqueta: '',
                        numero: '',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                Text(
                  'Add money to Neobank',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kTexto,
                  ),
                ),
                SizedBox(height: 12),
                metodoPago(Icons.savings_outlined, 'Move your direct deposit'),
                metodoPago(Icons.swap_horiz, 'Transfer from other banks'),
                metodoPago(Icons.phone_iphone, 'Apple Pay'),
                metodoPago(Icons.credit_card, 'Debit / Credit Card'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tarjeta({
  required Color color,
  required Color textoColor,
  required String etiqueta,
  required String numero,
  String? marca,
}) {
  return Container(
    width: 150,
    padding: EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (marca != null)
          Text(
            marca,
            style: TextStyle(
              color: textoColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        Spacer(),
        if (etiqueta.isNotEmpty)
          Text(etiqueta, style: TextStyle(color: textoColor, fontSize: 12)),
        if (numero.isNotEmpty)
          Text(
            numero,
            style: TextStyle(color: textoColor, fontSize: 12, letterSpacing: 1),
          ),
      ],
    ),
  );
}

Widget metodoPago(IconData icono, String texto) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: kBorde),
    ),
    child: Row(
      children: [
        Icon(icono, color: kTexto, size: 20),
        SizedBox(width: 14),
        Expanded(
          child: Text(texto, style: TextStyle(fontSize: 14, color: kTexto)),
        ),
        Icon(Icons.chevron_right, color: kMuted, size: 20),
      ],
    ),
  );
}
