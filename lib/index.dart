import './motor/culata.dart';
import './motor/motor.dart';

void main(List<String> args) {
  var motor = Motor(
    gasolina: 20,
    culata: Culata(
      inyectores: 4,
    ),
  );

  var carro = Carro(
    motor: motor,
  );

  carro.encender();
  carro.apagar();
}

class Carro {
  Motor motor;

  Carro({required this.motor});

  void encender() {
    motor.encender();
  }

  void apagar() {
    motor.apagar();
  }
}
