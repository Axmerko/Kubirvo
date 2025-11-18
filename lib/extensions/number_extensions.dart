extension NumberTransformation on int {
  String numberToRoman() {
    if (this > 3999 || this < 1) {
      return '0';
    }

    var number = this;

    List<String> romanNumerals = [
      'M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'
    ];
    List<int> values = [
      1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
    ];

    String result = '';

    for (int i = 0; i < values.length; i++) {
      while (number >= values[i]) {
        number -= values[i];
        result += romanNumerals[i];
      }
    }

    return result;
  }
}