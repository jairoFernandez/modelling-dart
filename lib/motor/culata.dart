import 'dart:math';

import 'inyector.dart';

class Culata {
  List<Inyector>? _inyectores;

  Culata({required int inyectores}) {
    _inyectores = [];
    for (int i = 0; i < inyectores; i++) {
      _inyectores!.add(Inyector(id: i));
    }
  }

  double? inyectar({required double gasto, required double gasolina}) {
    Inyector inyector = _generarInyectorRandom();
    print('INYECTOR: ${inyector.id}');
    return inyector.pasarGasolina(gasolina, gasto);
  }

  Inyector _generarInyectorRandom() {
    return _inyectores![Random().nextInt(_inyectores!.length)];
  }
}
