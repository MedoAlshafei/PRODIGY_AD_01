import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helper/buttons.dart';

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({super.key});

  Widget _buildButton(BuildContext context, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () => Provider.of<CalculatorLogic>(context, listen: false).buttonPressed(buttonText),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildButton(context, "⌫"),
            _buildButton(context, "C"),
          ],
        ),
        Row(
          children: [
            _buildButton(context, "7"),
            _buildButton(context, "8"),
            _buildButton(context, "9"),
            _buildButton(context, "/"),
          ],
        ),
        Row(
          children: [
            _buildButton(context, "4"),
            _buildButton(context, "5"),
            _buildButton(context, "6"),
            _buildButton(context, "x"),
          ],
        ),
        Row(
          children: [
            _buildButton(context, "1"),
            _buildButton(context, "2"),
            _buildButton(context, "3"),
            _buildButton(context, "-"),
          ],
        ),
        Row(
          children: [
            _buildButton(context, "0"),
            _buildButton(context, "00"),
            _buildButton(context, "."),
            _buildButton(context, "+"),
          ],
        ),
      ],
    );
  }
}