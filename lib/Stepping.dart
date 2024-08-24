import 'package:flutter/material.dart';

class StepProgressor extends StatefulWidget {
  const StepProgressor({super.key});

  @override
  State<StepProgressor> createState() => _StepProgressorState();
}

class _StepProgressorState extends State<StepProgressor> {
  late List<Step> _steps;
  late int _current;

  @override
  void initState() {
    super.initState();
    _current = 0;
    _steps = <Step>[
      Step(title: const Text('Step 1'), content: const Text('Do Something'), isActive: true),
      Step(title: const Text('Step 2'), content: const Text('Go for walk'), isActive: true),
      Step(title: const Text('Step 3'), content: const Text('Sleep properly'), isActive: true),
      Step(title: const Text('Step 4'), content: const Text('Code for minimum 5 hrs'), isActive: true),
    ];
  }

  void _stepContinue() {
    setState(() {
      _current++;
      if (_current >= _steps.length) _current = _steps.length - 1;
    });
  }

  void _stepCancel() {
    setState(() {
      _current--;
      if (_current < 0) _current = 0;
    });
  }

  void _stepTap(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Step Progressor'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Stepper(
            steps: _steps,
            type: StepperType.vertical,
            currentStep: _current,
            onStepCancel: _stepCancel,     // Passed method reference
            onStepContinue: _stepContinue, // Passed method reference
            onStepTapped: _stepTap,        // Passed method reference
          ),
        ),
      ),
    );
  }
}

