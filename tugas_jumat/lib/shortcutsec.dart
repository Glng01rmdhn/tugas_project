import 'package:flutter/material.dart';

class Shortcutsec extends StatelessWidget {
  const Shortcutsec({super.key});

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
              Text("Shortcut", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Edit", style: TextStyle(decoration: TextDecoration.underline)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Baris 1
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _card("Kantong Utama", "Rp49.157", Icons.account_balance_wallet),
            const SizedBox(width: 15),
            _card("Investasi", "BARU!", Icons.trending_up, isNew: true),
          ],
        ),
        const SizedBox(height: 15),
        // Baris 2
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _card("Jago Amal", "Zakat & Sedekah", Icons.mail),
            const SizedBox(width: 15),
            _card("Saldo Saya", "Rp49.157", Icons.attach_money),
          ],
        ),
        const SizedBox(height: 15),
        // Baris 3 & Tambah Shortcut
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _card("Auto-Budgeting", "Buat", Icons.settings),
            const SizedBox(width: 15),
            _card("Ajak Teman", "Dapat bonus!", Icons.card_giftcard, hasBorder: true),
          ],
        ),
      ],
    );
  }

  Widget _card(String title, String subtitle, IconData icon, {bool isNew = false, bool hasBorder = false}) {
    return Container(
      width: 170,
      height: 110,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: hasBorder ? Border.all(color: Colors.orange, width: 2) : null,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, size: 30),
              if (isNew) const Text("BARU!", style: TextStyle(color: Colors.red, fontSize: 10)),
            ],
          ),
          const Spacer(),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
          Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 10)),
        ],
      ),
    );
  }
}