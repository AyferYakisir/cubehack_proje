import 'package:flutter/material.dart';
import 'package:odev4/y_sayfasi.dart';

class BSayfasi extends StatefulWidget {
  const BSayfasi({super.key});

  @override
  State<BSayfasi> createState() => _BSayfasiState();
}

class _BSayfasiState extends State<BSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("B Sayfası"),
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
