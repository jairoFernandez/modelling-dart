class Inyector {
  int id;

  Inyector({
    required this.id,
  });

  double? pasarGasolina(double gasolina, double gasto) {
    return gasolina - gasto;
  }
}
