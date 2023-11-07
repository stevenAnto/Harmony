class Turno {
  String label;
  String profesor;
  List<Horario> horarios;
  Turno(this.label, this.profesor, this.horarios);
}

class Horario {
  String inicio;
  String fin;
  Horario(this.inicio, this.fin);
}
