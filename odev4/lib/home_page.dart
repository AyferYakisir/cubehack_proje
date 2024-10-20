import 'package:flutter/material.dart';
import 'package:odev4/a_sayfasi.dart';
import 'package:odev4/x_sayfasi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
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
                          builder: (context) => const ASayfasi()));
                },
                child: const Text("A Sayfasına Git")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const XSayfasi()));
                },
                child: const Text("X Sayfasına Git"))
          ],
        ),
      ),
    );
  }
}
