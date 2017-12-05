import 'dart:math' as math;
import 'i_component.dart';

class NeuralConfig implements IComponent {
  int batchSize = 10;
  int maxEpoches = 1000;
  int gibbsSamplingChainLength = 30;

  double costFunctionRecalculationStep = 1.0;
  double learningRate = 0.01;

  double momentum = 0.9;

  double minError = 0.0;
  double minErrorChange = 0.0;

  bool useBiases = true;

  NeuralConfig(
      {this.batchSize,
      this.maxEpoches,
      this.gibbsSamplingChainLength,
      this.costFunctionRecalculationStep,
      this.learningRate,
      this.momentum,
      this.minError,
      this.minErrorChange,
      this.useBiases});

  @override
  void fromMap(Map target) {
    if (target == null) throw new Exception('Map is empty');

    batchSize = math.max(int.parse(target['batchSize']), 1);
    maxEpoches = math.max(int.parse(target['maxEpoches']), 1);
    gibbsSamplingChainLength =
        math.max(int.parse(target['gibbsSamplingChainLength']), 1);

    costFunctionRecalculationStep =
        double.parse(target['costFunctionRecalculationStep']);

    if (costFunctionRecalculationStep == null)
      costFunctionRecalculationStep = 1.0;
    else if (costFunctionRecalculationStep > 1)
      costFunctionRecalculationStep = 1.0;
    else if (costFunctionRecalculationStep <= 0)
      costFunctionRecalculationStep = 0.01;

    learningRate = double.parse(target['learningRate']);

    if (learningRate <= 0)
      learningRate = 0.00001;
    else if (learningRate > 1) learningRate = 1.0;

    momentum = double.parse(target['momentum']);

    if (momentum <= 0)
      momentum = 0.00001;
    else if (momentum > 1) momentum = 1.0;

    minError = double.parse(target['minError']);

    if (minError <= 0)
      minError = 0.00001;
    else if (minError > 1) minError = 1.0;

    minErrorChange = double.parse(target['minErrorChange']);

    if (minErrorChange <= 0)
      minErrorChange = 0.00001;
    else if (minErrorChange > 1) minErrorChange = 1.0;

    useBiases = target['useBiases'];
  }

  @override
  Map toMap() {
    var m = new Map();

    m['batchSize'] = batchSize;
    m['maxEpoches'] = maxEpoches;
    m['gibbsSamplingChainLength'] = gibbsSamplingChainLength;
    m['costFunctionRecalculationStep'] = costFunctionRecalculationStep;
    m['learningRate'] = learningRate;
    m['momentum'] = momentum;
    m['minError'] = minError;
    m['minErrorChange'] = minErrorChange;
    m['useBiases'] = useBiases;

    return m;
  }
}
