// Tugas Pertemuan 4 - NIM 2306100
import 'package:flutter/material.dart';

// Model Data untuk Quest (Dinamis)
class Quest {
  final String title;
  final String description;
  final String reward;

  Quest({
    required this.title, 
    required this.description, 
    required this.reward
  });
}

class QuestWidget extends StatelessWidget {
  // Menambahkan variabel quest agar bisa dipanggil di main.dart
  final Quest quest;

  // Constructor sekarang mewajibkan (required) parameter quest
  const QuestWidget({super.key, required this.quest});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Notifikasi SnackBar saat quest diklik
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Memulai Quest: ${quest.title}!'),
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            backgroundColor: const Color.fromARGB(255, 7, 149, 57),
          ),
        );
      },
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(14),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withAlpha(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(14),
              blurRadius: 10,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: Row(
          children: [
            // Icon Indikator Quest
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withAlpha(30),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.task_alt, color: Colors.blueAccent, size: 48),
            ),
            // Detail Teks Quest
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quest.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      quest.description,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Hadiah: ${quest.reward}",
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}