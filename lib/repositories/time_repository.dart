import 'package:brazil_apostas/model/time.dart';

class TimeRepository {
  static List<Time> table = [
    Time(
        name: "Flamengo",
        position: 1,
        image: "images/flamengo.png",
        initials: "FLA",
        wins: 2,
        losses: 0),
    Time(
        name: "Santos",
        position: 2,
        image: "images/santos.png",
        initials: "SAN",
        wins: 1,
        losses: 1),
    Time(
        name: "Corinthians",
        position: 3,
        image: "images/corinthians.png",
        initials: "COR",
        wins: 0,
        losses: 2),
    // Time(name: "Palmeiras", position: 4, image: "image/palmeiras.png", initials: "PAL", wins: wins, losses: losses),
    // Time(name: "Atlético Mineiro", position: position, image: "image/atletico_mineiro.png", initials: "CMA", wins: wins, losses: losses),
  ];
}
