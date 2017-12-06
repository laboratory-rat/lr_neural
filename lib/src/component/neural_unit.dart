import '../interface/component/i_neural_layer.dart';
import '../interface/component/i_neural_unit.dart';
import 'dart:math';


class NeuralUnit extends INeuralUnit {
  List<double> weights = [];

  int get length => weights == null ? 0 : weights.length;

  double get(int x) => weights[x];
  NeuralUnit set(int x, double value) {
    weights[x] = value;
    return this;
  }

  NeuralUnit();
  NeuralUnit.fromLength(int x, INeuralLayer parent) {
    weights = [];
    layer = parent;
    bias = randomizer.nextDouble();

    for (var i = 0; i < x; i++) {
      weights.add(randomizer.nextDouble());
    }
  }

  double activation(List<double> input) {
    double result = 0.0;

    history.add(lastResponse);
    return result;
  }

  @override
  void fromMap(Map target) {
    weights = target['weights'];
    history = target['history'];
    bias = target['bias'];
  }

  @override
  Map toMap() {
    var m = new Map();

    m['weights'] = weights;
    m['history'] = history;
    m['bias'] = bias;

    return m;
  }
}
