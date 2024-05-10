import "package:flutter/material.dart";

class circular extends StatelessWidget {
  const circular({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Color.fromARGB(255, 117, 117, 117),
        ));
  }
}
