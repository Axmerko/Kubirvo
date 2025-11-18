final RegExp _emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

extension StringValidation on String {
  bool isEmail() {
    return _emailRegex.hasMatch(this);
  }

  bool isPositiveNumber() {
    return double.tryParse(this) != null && double.parse(this) > 0;
  }

  bool isPositiveInteger() {
    return int.tryParse(this) != null && int.parse(this) > 0;
  }
}

String? validateNotEmpty(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }
  if (!value.isEmail()) {
    return 'Neplatný e-mail';
  }
  return null;
}

String? validatePositiveNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }
  if (!value.isPositiveNumber()) {
    return 'Číslo musí být kladné';
  }
  return null;
}

String? validatePositiveInteger(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }
  if (!value.isPositiveInteger()) {
    return 'Číslo musí být kladné a celé';
  }
  return null;
}

String? validateOptionalPositiveNumber(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }
  if (!value.isPositiveNumber()) {
    return 'Číslo musí být kladné';
  }
  return null;
}

String? validateOptionalPositiveInteger(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }
  if (!value.isPositiveInteger()) {
    return 'Číslo musí být kladné a celé';
  }
  return null;
}

String? validatePositiveOrZeroNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }

  if (num.tryParse(value) == null) {
    return 'Hodnota musí být číslo';
  }

  final number = num.parse(value);

  if (!value.isPositiveNumber() && number != 0) {
    return 'Číslo musí být kladné';
  }
  return null;
}

String? validatePositiveOrZeroInteger(String? value) {
  if (value == null || value.isEmpty) {
    return 'Toto pole je povinné';
  }

  if (num.tryParse(value) == null) {
    return 'Hodnota musí být číslo';
  }

  final number = num.parse(value);

  if (!value.isPositiveInteger() && number != 0) {
    return 'Číslo musí být kladné a celé';
  }
  return null;
}

String? validateOptionalPositiveOrZeroNumber(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  if (num.tryParse(value) == null) {
    return 'Hodnota musí být číslo';
  }

  final number = num.parse(value);

  if (!value.isPositiveNumber() && number != 0) {
    return 'Číslo musí být kladné';
  }
  return null;
}

String? validateOptionalPositiveOrZeroInteger(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  if (num.tryParse(value) == null) {
    return 'Hodnota musí být číslo';
  }

  final number = num.parse(value);

  if (!value.isPositiveInteger() && number != 0) {
    return 'Číslo musí být kladné a celé';
  }
  return null;
}

