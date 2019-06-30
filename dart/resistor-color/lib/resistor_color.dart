class ResistorColor {
  var colors = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white"
  ];

  int colorCode(String color) {
    int len = colors.length;

    for (var i = 0; i < len; i++) {
      if (colors[i] == color) {
        return i;
      }
    }
  }
}
