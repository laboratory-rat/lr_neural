import 'package:lr_neural/lr_neural.dart';

void main() {
  var n = new Neuron.fromLength(10, 1, new Random());

  var total = 0;
  for(var i = 0; i < n.lengthX; i++){
    for(var k = 0; k < n.lengthY; k++){
      print(n.weights[i][k]);
      print(++total);
    }
  }
}
