import 'dart:math';
import 'package:lr_neural/i_lr_neural.dart';

abstract class INeuralLayer implements INeuralComponent{
    int get length;
    
    Random randomizer;
}