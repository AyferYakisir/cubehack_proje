import 'package:flutter/material.dart';
import 'package:odev4/y_sayfasi.dart';

class XSayfasi extends StatefulWidget {
  const XSayfasi({super.key});

  @override
  State<XSayfasi> createState() => _XSayfasiState();
}

class _XSayfasiState extends State<XSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("X Sayfası"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const YSayfasi()));
                },
                child: const Text("Y Sayfasına Git"))
          ],
        ),
      ),
    );
  }
}