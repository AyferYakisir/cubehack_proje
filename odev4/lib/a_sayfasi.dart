import 'package:flutter/material.dart';
import 'package:odev4/b_sayfasi.dart';

class ASayfasi extends StatefulWidget {
  const ASayfasi({super.key});

  @override
  State<ASayfasi> createState() => _ASayfasiState();
}

class _ASayfasiState extends State<ASayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Sayfası"),
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
                          builder: (context) => const BSayfasi()));
                },
                child: const Text("B Sayfasına Git"))
          ],
        ),
      ),
    );
  }
}
