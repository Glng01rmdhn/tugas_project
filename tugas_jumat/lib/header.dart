import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.lightGreen, Colors.white]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text("Assalamu'alaikum, sapakek", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("J", style: TextStyle(fontSize: 50, color: Colors.yellow, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text("Syariah", style: TextStyle(color: Colors.white)),
                      ),
                      Text("Jago", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.person, color: Colors.black),
                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      const Icon(Icons.notifications, color: Colors.black),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                          child: const Text("3", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}