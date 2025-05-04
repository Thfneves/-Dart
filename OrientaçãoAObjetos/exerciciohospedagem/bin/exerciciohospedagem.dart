void main() {
  final Thiago = Cliente("Thiago", [80]);
  Thiago.CancelandoReserva(80);
  print(Thiago);
}

class Cliente {
  final String nome;
  final List<int> _reservas;

  Cliente(this.nome, this._reservas);

  void reserva(int numero) {
    // Criando reserva

    _reservas.add(numero);
    print("O numero do quarto disponivel é $_reservas");
  }

  void CancelandoReserva(int numero) {
    //Cancelando reserva

    if (_reservas.isEmpty) {
      print("Voce não tem nenhuma reserva ativa");
    } else {
      _reservas.remove(numero);
    }
  }

  @override
  String toString() {
    return ("$nome sua reserva foi feita e o quarto disponivel é de $_reservas");
  }
}
