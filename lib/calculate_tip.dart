String calculateTip(String preis, double bewertung) {
  if (bewertung == 5) {
    int value = ((10 / 100) * double.parse(preis)).round();

    return preis = (double.parse(preis) + value).round().toString();
  } else if (bewertung == 1) {
    return ((double.parse(preis)).round()).toString();
  } else {
    return (double.parse(preis) + double.parse(preis) * (bewertung / 100))
        .round()
        .toString();
  }
}