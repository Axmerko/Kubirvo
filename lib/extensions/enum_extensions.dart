import 'package:kubirovacka_one/enums/wood_type.dart';

import '../enums/calculation_type.dart';
import '../enums/wood_log_type.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart' as api;

extension WoodLogTypeConversion on WoodLogType {
  CalculationType toCalculationType() {
    switch (this) {
      case WoodLogType.log:
        return CalculationType.withBark;
      case WoodLogType.raw:
        return CalculationType.raw;
      case WoodLogType.logWithoutBark:
        return CalculationType.withoutBark;
      case WoodLogType.logUpRight:
        return CalculationType.upright;
    }
  }

  String getName() {
    switch (this) {
      case WoodLogType.log:
        return 'Kulatina';
      case WoodLogType.raw:
        return 'Surák';
      case WoodLogType.logWithoutBark:
        return 'Bez kůry';
      case WoodLogType.logUpRight:
        return 'Nastojato';
    }
  }

  api.WoodLogType toApiWoodLogType() {
    switch (this) {
      case WoodLogType.log:
        return api.WoodLogType.log;
      case WoodLogType.raw:
        return api.WoodLogType.raw;
      case WoodLogType.logWithoutBark:
        return api.WoodLogType.logWithOutBark;
      case WoodLogType.logUpRight:
        return api.WoodLogType.logUpRight;
    }
  }
}

extension CalculationTypeConversion on CalculationType {
  WoodLogType toWoodLogType() {
    switch (this) {
      case CalculationType.withBark:
        return WoodLogType.log;
      case CalculationType.raw:
        return WoodLogType.raw;
      case CalculationType.withoutBark:
        return WoodLogType.logWithoutBark;
      case CalculationType.upright:
        return WoodLogType.logUpRight;
    }
  }

  String getName() {
    switch (this) {
      case CalculationType.withBark:
        return 'Kulatina';
      case CalculationType.raw:
        return 'Surák';
      case CalculationType.withoutBark:
        return 'Bez kůry';
      case CalculationType.upright:
        return 'Nastojato';
    }
  }
}

extension WoodTypeConversion on WoodType {
  api.WoodType toApiWoodType() {
    switch (this) {
      case WoodType.none:
        return api.WoodType.none;
      case WoodType.spruce:
        return api.WoodType.spruce;
      case WoodType.pine:
        return api.WoodType.pine;
      case WoodType.larch:
        return api.WoodType.larch;
      case WoodType.beech:
        return api.WoodType.beech;
      case WoodType.oak:
        return api.WoodType.oak;
      case WoodType.maple:
        return api.WoodType.maple;
      case WoodType.ash:
        return api.WoodType.ash;
      case WoodType.fir:
        return api.WoodType.fir;
      case WoodType.hornbeam:
        return api.WoodType.hornbeam;
      case WoodType.aspen:
        return api.WoodType.aspen;
      case WoodType.alder:
        return api.WoodType.alder;
      case WoodType.birch:
        return api.WoodType.birch;
      case WoodType.linden:
        return api.WoodType.linden;
      case WoodType.willow:
        return api.WoodType.willow;
      case WoodType.poplar:
        return api.WoodType.poplar;
      case WoodType.acacia:
        return api.WoodType.acacia;
      case WoodType.elm:
        return api.WoodType.elm;
    }
  }
}