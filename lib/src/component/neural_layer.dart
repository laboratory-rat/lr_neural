import '../interface/component/i_neural_layer.dart';
import '../interface/component/i_neural_unit.dart';
import 'dart:math';


class NeuralLayer implements INeuralLayer{
  Random randomizer;

  List<INeuralUnit> list = [];
  int get length => list == null ? 0 : list.length;

  @override
  void fromMap(Map target) {
    // TODO: implement fromMap
  }

  @override
  Map toMap() {
    // TODO: implement toMap
  }

}