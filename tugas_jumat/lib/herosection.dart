import 'package:flutter/material.dart';

class Herosection extends StatelessWidget {
  const Herosection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.monetization_on),
                      SizedBox(width: 5),
                      Text("Kantong Utama", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Rp49.157"),
                      SizedBox(width: 5),
                      Icon(Icons.visibility_off),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Aktivitas Terakhir"),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_drop_down_outlined, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildActionCard(Icons.money_outlined, "Transfer & Bayar"),
            _buildActionCard(Icons.qr_code, "Scan QRIS"),
          ],
        ),
      ],
    );
  }

  Widget _buildActionCard(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 5),
          Text(title),
        ],
      ),
    );
  }
}