import 'dart:math';
import 'i_component.dart';

class Neuron implements IComponent {
  List<List<double>> weights;

  int get lengthX => weights == null ? 0 : weights.length;
  int get lengthY => lengthX == 0 || weights[0] == null ? 0 : weights[0].length;

  double get(int x, int y) => weights[x][y];
  Neuron set(int x, int y, double value) {
    weights[x][y] = value;
    return this;
  }

  void set rand(Random r) => _rand = r;
  Random _rand;

  double _lastResponse;

  Neuron();
  Neuron.fromLength(int x, int y, Random rand) {
    weights = new List<List<double>>();
    _rand = rand;

    for (int i = 0; i < x; i++) {
      var wy = new List<double>();
      for (int k = 0; k < y; k++) {
        wy.add(_rand.nextDouble());
      }

      weights.add(wy);
    }
  }

  double response(List<List<double>> input) {
    int total = lengthX * lengthY;
    double result = 0.0;

    return result;
  }

  @override
  void fromMap(Map target) {}

  @override
  Map toMap() {
    return new Map();
  }
}
