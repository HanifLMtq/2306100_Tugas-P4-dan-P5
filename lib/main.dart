// Tugas Pertemuan 4 - NIM 2306100
import 'package:flutter/material.dart';
import 'package:p4_2306100/quest_widget.dart'; 
import 'package:p4_2306100/widget/chip_widget.dart';
import 'package:p4_2306100/widget/header_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Quest> quests = [
      Quest(
        title: "Ekspedisi Hutan Terlarang", 
        description: "Selidiki aktivitas mencurigakan di wilayah perbatasan utara.", 
        reward: "300 Gold"
      ),
      Quest(
        title: "Patroli", 
        description: "Amankan wilayah pemukiman dari serangan monster liar.", 
        reward: "500 XP"
      ),
      Quest(
        title: "Mencari Kitab Suci", 
        description: "Pergi ke wilayah bagian Barat untuk mendapat Pencerahan.", 
        reward: "Legendary Books"
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KING of THE KING',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SUNDA EMPIRE",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget Header (Profil)
              const HeaderWidget(
                name: "King Hanif", 
                role: "Soul of Fight", 
                level: 999
              ),
              
              const SizedBox(height: 16),
              const Row(
                children: [
                  ChipWidget(label: "HP: 5000"),
                  SizedBox(width: 8),
                  ChipWidget(label: "MP: 300"),
                  SizedBox(width: 8),
                  ChipWidget(label: "GOLD: 800"),
                ],
              ),
              
              const SizedBox(height: 28),
              
              const Text(
                "DAFTAR QUEST AKTIF",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                  letterSpacing: 1.2
                ),
              ),
              
              const SizedBox(height: 12),
              
              Column(
                children: quests.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: QuestWidget(quest: item),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}