void main(List<String> args) {
  // terrainDeJeuVaviable();

  final List<String> jours = [];

  jours.addAll([
    'Lundi',
    'Samedi',
    'Dimanche',
    'Mercredi',
    'Mardi',
    'Jeudi',
    'Vendredi'
  ]);

  print("\nLes jours de la semaine sont : $jours \n\n");

  jours.sort((String a, String b) => a.compareTo(b));

  print("\nLes jours trié de la semaine sont : $jours \n\n");

  var joursEnMaj = jours.map((jour) => jour.toUpperCase()).toList();

  print("\nLes jours trié en MAJ de la semaine sont : $joursEnMaj \n\n");

  var longest =
      jours.reduce((elt1, elt2) => elt1.length > elt2.length ? elt1 : elt2);

  print("the longest day of the week is $longest");

  jours.forEach((element) {
    print("\n$element");
  });
  String original = 'Dart';
  String paddedWithStars = original.padRight(10);
  print("Padded with stars: '$paddedWithStars'");

  printEmploye();
}

void terrainDeJeuVaviable() {
  final int age = 124;
  print("je suis ${age < 18 ? 'mineur' : 'majeur'}  ");
  var a = add1;

  print("${a(add, 1, 2)}");
}

int add(int a, int b) {
  return a + b;
}

int add1(int add2(int a, int b), int c, int d) {
  return add2(c, d);
}

void printEmploye() {
  Map employers = {
    200: {"nom": "ali mar ", "Services": " informaticien", "Salaire": "600000"},
    201: {"nom": "ali  ", "Services": " info", "Salaire": "600000"},
    202: {"nom": "ali mar ", "Services": " informaticien", "Salaire": "600000"}
  };

  print("-" * 85);
  String headerLine = "|" + "ID".padLeft(20) + "|";

  employers[200].keys.forEach((element) {
    headerLine += element.toString().padLeft(20) + "|";
  });
  print(headerLine);
  print("-" * 85);

  employers.forEach((key, data) {
    print("|${key.toString().padLeft(20)}"
        "|${data['nom'].toString().padLeft(20)}"
        "|${data['Salaire'].toString().padLeft(20)}"
        "|${data['Services'].toString().padLeft(20)}|");
  });
  print("-" * 85);
}
