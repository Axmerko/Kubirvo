import 'dart:convert';

class Quality {
  final int number;
  final String name;

  const Quality(this.number, this.name);

  static List<Quality> fromJsonArray(String jsonString) {
    final parsedJsonArray = jsonDecode(jsonString) as List<dynamic>;
    return parsedJsonArray.map((json) => Quality.fromJson(json)).toList();
  }

  factory Quality.fromJson(String json) {
    final split = json.split(':');
    return Quality(int.parse(split[0]), split[1]);
  }

  static String toJsonArray(List<Quality> qualities) {
    return jsonEncode(qualities.map((quality) => quality.toJson()).toList());
  }

  String toJson() {
    return '$number:$name';
  }

  @override
  String toString() {
    return name;
  }
}