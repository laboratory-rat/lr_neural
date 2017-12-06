import 'dart:math';
import 'i_neural_component.dart';
import 'i_neural_layer.dart';


abstract class INeuralUnit implements INeuralComponent {
  int get length;
  
  double bias;

  INeuralLayer layer;
  Random get randomizer => layer.randomizer;


  List<double> history = [];
  double get lastResponse => history == null || history.length == 0 ? 0 : history.last;


  double activation(List<double> input);
}
