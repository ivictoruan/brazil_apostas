/* 
  Esta é uma classe que representa um time.
*/
class Time {
  String name;
  int position;
  String image; 
  String initials; // sigla
  int wins;
  int losses;
  Time({
    required this.name,
    required this.position,
    required this.image,
    required this.initials,
    required this.wins,
    required this.losses,
  });
}

