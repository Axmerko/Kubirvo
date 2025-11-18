import '../enums/wood_type.dart';

String getWoodName(WoodType type) {
  switch (type) {
    case WoodType.spruce:
      return 'Smrk';
    case WoodType.pine:
      return 'Borovice';
    case WoodType.larch:
      return 'Modřín';
    case WoodType.beech:
      return 'Buk';
    case WoodType.oak:
      return 'Dub';
    case WoodType.maple:
      return 'Javor';
    case WoodType.ash:
      return 'Jasan';
    case WoodType.fir:
      return 'Jedle';
    case WoodType.hornbeam:
      return 'Habr';
    case WoodType.aspen:
      return 'Osika';
    case WoodType.alder:
      return 'Olše';
    case WoodType.birch:
      return 'Bříza';
    case WoodType.linden:
      return 'Lípa';
    case WoodType.willow:
      return 'Vrba';
    case WoodType.poplar:
      return 'Topol';
    case WoodType.acacia:
      return 'Akát';
    case WoodType.elm:
      return 'Jilm';
    case WoodType.none:
      return 'Žádný';
  }
}