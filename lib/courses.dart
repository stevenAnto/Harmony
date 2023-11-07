import 'package:cursos_boton_mas/turno.dart';

class Curso {
  String label;
  List<Turno> turnos;
  Curso(this.label, this.turnos);

  static List<Curso> samples = [
    Curso('Sistemas Operativos', [
      Turno('A', 'Karim', [Horario('8:00', '8:45')])
    ]),
    Curso('Construccion de Software', [
      Turno('A', 'Ing Arroyo', [Horario('8:00', '8:45')])
    ]),
    Curso(' Texnologia de Objetos', [
      Turno('A', 'Bromas', [Horario('8:00', '8:45')])
    ]),
    Curso(' Metodos Numericos', [
      Turno('A', 'Olha', [Horario('8:00', '8:45')])
    ]),
    Curso('Fundamentos de Sistemas de Informacion', [
      Turno('A', 'Juarez', [Horario('8:00', '8:45')])
    ]),
    Curso('Redes ', [
      Turno('A', 'Lino Pinto', [Horario('8:00', '8:45')])
    ]),
  ];
}
