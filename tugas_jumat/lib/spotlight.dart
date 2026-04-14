import 'package:flutter/material.dart';

class Spotlight extends StatelessWidget {
  const Spotlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Spotlight", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Lihat Semua"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: PageView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Total Bonus", style: TextStyle(color: Colors.white, fontSize: 16)),
                        Text("1 JUTA", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                        Text("dengan QRIS Jago Syariah", style: TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                    const Icon(Icons.phone_android, color: Colors.white, size: 60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}