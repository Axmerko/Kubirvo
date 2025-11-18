import 'package:flutter/material.dart';

extension StringTransformation on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String capitalizeAll() {
    return split(' ').map((str) => str.capitalize()).join(' ');
  }

  String unaccent() {
    var withDia = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËĚèéêëěðČÇçčÐĎďÌÍÎÏìíîïĽľÙÚÛÜŮùúûüůŇÑñňŘřŠšŤťŸÝÿýŽž';
    var withoutDia = 'AAAAAAaaaaaaOOOOOOOooooooEEEEEeeeeeeCCccDDdIIIIiiiiLlUUUUUuuuuuNNnnRrSsTtYYyyZz';

    var str = this;
    for (int i = 0; i < withDia.length; i++) {
      str = str.replaceAll(withDia[i], withoutDia[i]);
    }

    return str;
  }

  String abbreviate(int maxLength) {
    var it = characters.iterator;
    for (var i = 0; i <= maxLength; i++) {
      if (!it.expandNext()) return this;
    }
    return it.current;
  }
}
