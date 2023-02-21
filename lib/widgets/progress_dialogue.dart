import 'package:flutter/material.dart';

class ProgressDialogue extends StatelessWidget {
  String? message;

  ProgressDialogue({this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // backgroundColor: Colors.blueAccent,
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            const SizedBox(
              width: 6.0,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
            ),
            const SizedBox(
              width: 26.0,
            ),
            Text(
              message!,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
          ]),
        ),
      ),
    );
  }
}
