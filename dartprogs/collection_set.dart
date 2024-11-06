void main(List<String> args) {
  var unElement = <int>{};

  unElement.add(1);
  unElement.addAll({2, 3, 4, 5});
  print("unElement : $unElement");

  Set<int> unAutreElement = {1, 2, 5, 6, 7, 77};

  print("un autre element avec utilisation de set $unAutreElement");

  //test sur contains
  print("----> 1 inclut dans l'ensemble :  ${unAutreElement.contains(1)}");

  //test intersection ,union ,difference

  var intersection = unElement.intersection(unAutreElement);
  var union = unElement.union(unAutreElement);
  var difference1 = unElement.difference(unAutreElement);
  var difference2 = unAutreElement.difference(unElement);

  print(
      "l'intersection entre  $unAutreElement et $unElement est : $intersection");
  print("l'union entre  $unAutreElement et $unElement est : $union");
  print(
      "la difference entre  $unElement et $unAutreElement est  : $difference1");
  print(
      "la difference entre  $unAutreElement et $unElement est  : $difference2");
}
