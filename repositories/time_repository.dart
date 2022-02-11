import 'package:brazil_apostas/model/time.dart';

class TimeRepository {
  static List<Time> table = [
    Time(
        nome: "Flamengo",
        position: 1,
        image: "image/flamengo.png",
        initials: "FLA",
        wins: 1,
        losses: 0),
    Time(
        nome: "Santos",
        position: 2,
        image: "image/santos.png",
        initials: "SAN",
        wins: 0,
        losses: 1),
    // Time(nome: "Corinthians", position: 3, image: "image/corinthians.png", initials: "COR", wins: wins, losses: losses),
    // Time(nome: "Palmeiras", position: 4, image: "image/palmeiras.png", initials: "PAL", wins: wins, losses: losses),
    // Time(nome: "Atlético Mineiro", position: position, image: "image/atletico_mineiro.png", initials: "CMA", wins: wins, losses: losses),
  ];
}
