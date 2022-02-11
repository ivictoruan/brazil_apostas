/* 
  Esta é uma classe que representa um time.
*/
class Time {
  String nome;
  String position;
  String image; 
  String initials; // sigla
  int wins;
  int losses;
  Time({
    required this.nome,
    required this.position,
    required this.image,
    required this.initials,
    required this.wins,
    required this.losses,
  });
}

