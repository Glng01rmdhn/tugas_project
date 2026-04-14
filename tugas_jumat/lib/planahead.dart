import 'package:flutter/material.dart';

class Planahead extends StatelessWidget {
  const Planahead({super.key});

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
              Text("Plan Ahead", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Tutup"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              const Icon(Icons.list_alt_outlined, size: 80),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Sering lupa Bayar tagihan?", style: TextStyle(fontSize: 14)),
                    Text(
                      "Buat rencana pembayaran?",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                    ),
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