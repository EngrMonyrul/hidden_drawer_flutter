import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiPage extends StatefulWidget {
  const ConfettiPage({super.key});

  @override
  State<ConfettiPage> createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {
  final ConfettiController _confettiController =
      ConfettiController(duration: const Duration(seconds: 1));
  final ConfettiController _confettiController2 =
      ConfettiController(duration: const Duration(seconds: 1));

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text("Party Time"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // _confettiController.stop();
                    _confettiController.play();
                    _confettiController2.play();
                    setState(() {});
                  },
                  child: const Text(
                    "Press",
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          child: ConfettiWidget(
            displayTarget: true,
            confettiController: _confettiController,
            blastDirection: -(pi / 4),
            gravity: 0.01,
            emissionFrequency: 0.05,
          ),
        ),
        Positioned(
          right: 0,
          child: ConfettiWidget(
            displayTarget: true,
            confettiController: _confettiController2,
            blastDirection: -((7 * pi) / 4),
            gravity: 0.01,
            emissionFrequency: 0.05,
          ),
        ),
      ],
    );
  }
}
