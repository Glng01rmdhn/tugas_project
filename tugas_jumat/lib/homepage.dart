import 'package:flutter/material.dart';
import 'package:tugas_jumat/header.dart';
import 'package:tugas_jumat/herosection.dart';
import 'package:tugas_jumat/navbarsection.dart';
import 'package:tugas_jumat/planahead.dart';
import 'package:tugas_jumat/shortcutsec.dart';
import 'package:tugas_jumat/spotlight.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            Herosection(),
            Planahead(),
            Spotlight(),
            Shortcutsec(),

          ],
        ),
      ),
      bottomNavigationBar: Navbarsection(),
    );
  }
}