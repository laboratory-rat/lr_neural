import 'dart:math';
import 'i_neural_component.dart';
import 'i_neural_layer.dart';

abstract class INeuralNet implements INeuralComponent {
  int countIn;
  int countOut;

  List<INeuralLayer> layers;

  int get length => layers == null || layers.length == 0 ? 0 : layers.length;
  int get total {
    if (length == 0) return 0;
    var t = 0;
    layers.forEach((x) => t += x.length);
    return t;
  }

  Random randomizer;
}
