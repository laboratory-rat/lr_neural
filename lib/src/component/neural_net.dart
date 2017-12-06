import '../interface/component/i_neural_net.dart';
import 'dart:math';

import 'neural_config.dart';

class NeuralNet extends INeuralNet{
    NeuralConfig _config;
    NeuralConfig get config => _config;

    NeuralNet(this._config, int input, int output, [int seed]){
        if(seed == null){
            seed = new DateTime.now().toUtc().millisecondsSinceEpoch;
        }

        randomizer = new Random(seed);
    }



  @override
  void fromMap(Map target) {
    // TODO: implement fromMap
  }

  @override
  Map toMap() {
    // TODO: implement toMap
  }
}