import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/buttons_container.dart';
import '../helper/buttons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorLogic(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Consumer<CalculatorLogic>(
                        builder: (context, logic, child) {
                          return Text(
                            logic.output,
                            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      Consumer<CalculatorLogic>(
                        builder: (context, logic, child) {
                          return Text(
                            logic.result,
                            style: const TextStyle(fontSize: 36, color: Colors.grey),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const ButtonsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
