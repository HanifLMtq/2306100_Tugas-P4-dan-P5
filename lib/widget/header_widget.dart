import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;
  const HeaderWidget({super.key, required this.name, required this.role, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 2, 172, 19), const Color.fromARGB(255, 5, 95, 159)],
          begin: .topStart,
          end: .bottomEnd
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://picsum.photos/id/142/4272/2848"),
              ),
              Positioned(
                //right: 2,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.black,
                  ),
                  child: Text("$level",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
              Text(role,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
              ],
            ),
          )

        ],
      ),
    );
  }
}