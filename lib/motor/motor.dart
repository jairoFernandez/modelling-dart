import 'culata.dart';

class Motor {
  double? _gasolina;

  final PORCENTAJE_DE_PASO_DE_GASOLINA = 0.001;
  Culata? _culata;

  Motor({double gasolina = 10, int? inyectores, Culata? culata}) {
    this._gasolina = gasolina;
    this._culata = culata;
  }

  void encender() {
    print('-- Motor encendido');
    print('-- Gasolina: ${this._gasolina}');
    _inyectar();
    _comprimir();
    _explosion();
    _escapada();
  }

  void apagar() {
    print('-- Motor apagado');
    print('-- Gasolina: ${this._gasolina}');
  }

  void _inyectar() {
    print('Inyectando gasolina');
    _gasolina = _culata!.inyectar(
      gasto: PORCENTAJE_DE_PASO_DE_GASOLINA,
      gasolina: this._gasolina!,
    );
  }

  void _comprimir() {
    print('Comprimiendo gasolina');
  }

  void _explosion() {
    print('Explosión');
  }

  /**  */
  void _escapada() {
    print('Escapada');
  }
}
