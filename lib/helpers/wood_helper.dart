import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/enums/wood_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
final prefs = getIt.get<SharedPreferences>();

List<WoodType> getSelectedWoodTypes() {
  final List<String> selectedWoodTypes =
      prefs.getStringList('selectedWoodTypes') ?? WoodType.values.where((element) => element != WoodType.none).map((e) => e.toString()).toList();
  return selectedWoodTypes.map((e) => WoodType.values.firstWhere((element) => element.toString() == e)).toList();
}

Future<WoodType> getLastUsedWoodType() async {
  final String lastUsedWoodType = prefs.getString('lastUsedWoodType') ?? WoodType.spruce.toString();
  return WoodType.values.firstWhere((element) => element.toString() == lastUsedWoodType);
}
