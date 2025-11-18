import 'dart:math';

import 'package:kubirovacka_one/enums/calculation_type.dart';
import 'package:kubirovacka_one/enums/wood_type.dart';

double log10(num x) => log(x) / ln10;

double calculateVolume(CalculationType type, WoodType wood, double length, double diameter, bool isRz) {
  if (type == CalculationType.withBark) {
    return _calculateWithBark(wood, length, diameter, isRz);
  }

  if (type == CalculationType.withoutBark) {
    return _calculateWithoutBark(length, diameter);
  }

  if (type == CalculationType.upright) {
    return _calculateUpright(wood, length, diameter);
  }

  if (type == CalculationType.raw) {
    return _calculateRaw(length.round(), diameter.round());
  }

  return 0;
}

double _calculateWithBark(WoodType wood, double length, double diameter, bool isRz) {
  var p0 = 0.0;
  var p1 = 0.0;
  var p2 = 0.0;

  switch (wood) {
    case WoodType.spruce:
    case WoodType.fir:
      p0 = 0.57723;
      p1 = 0.006897;
      p2 = 1.3123;
      break;
    case WoodType.beech:
    case WoodType.maple:
    case WoodType.aspen:
    case WoodType.hornbeam:
    case WoodType.linden:
      p0 = -0.040877;
      p1 = 0.16634;
      p2 = 0.56076;
      break;
    case WoodType.oak:
    case WoodType.ash:
    case WoodType.alder:
    case WoodType.birch:
    case WoodType.poplar:
    case WoodType.willow:
    case WoodType.acacia:
    case WoodType.elm:
      p0 = 1.2474;
      p1 = 0.042623;
      p2 = 1.0623;
      break;
    case WoodType.larch:
      p0 = 1.7015;
      p1 = 0.008762;
      p2 = 1.4568;
      break;
    case WoodType.pine:
      if (isRz) {
        p0 = 1.7015;
        p1 = 0.008762;
        p2 = 1.4568;
      } else {
        p0 = 0.25017;
        p1 = 0.001915;
        p2 = 1.7866;
      }
      break;
    case WoodType.none:
      break;
  }
  var d = pow(diameter, p2);
  d = pow(diameter - (p0 + p1 * d), 2.0);
  return d * pi * length / 40000.0;
}

double _calculateWithoutBark(double length, double diameter) {
  return pi / 4.0 * pow(diameter, 2.0) * length * 0.0001;
}

double _calculateUpright(WoodType wood, double length, double diameter) {
  var volume = 0.0;
  switch (wood) {
    case WoodType.spruce:
      volume =
          0.000031989 * pow(diameter + 1, 1.8465) * pow(length, 1.1474) - 0.00829054252 * pow(diameter + 1, -1.02037409) * pow(length, 0.896100664);
      break;
    case WoodType.fir:
      volume =
          0.000034922 * pow(diameter + 1, 1.8665) * pow(length, 1.122) - 0.0267458917 * pow(diameter + 1, -1.30154794) * pow(length, 0.739959292);
      break;
    case WoodType.pine:
      volume = 0.000022575 * pow(diameter + 1, 2.115334 - 0.012722 * log10(diameter + 1)) * pow(length, 0.979596) -
          0.064263613848 * pow(diameter + 1, -2.12448503) * pow(length, 1.37259082);
      break;
    case WoodType.larch:
      volume = pow(length, 1.244054) * (0.000008524 + 0.000030907 * pow(diameter, 1.73649)) -
          0.01234247 * pow(length, 1.209406) * pow(diameter + 1, -1.590811);
      break;
    case WoodType.oak:
      volume = (0.452724601 +
                  2.1553367 / length +
                  9.10487721 / pow(length, 2.0) -
                  12.0542387 / diameter +
                  0.180590883 * length / diameter -
                  0.00401143165 * pow(length, 2.0) / diameter) *
              pi *
              pow(diameter, 2.0) *
              length /
              40000 +
          (-6.82529655 / pow(diameter, 2.0) +
                  9.43795573 * length / pow(diameter, 2.0) -
                  0.0244460966 * pow(length, 2.0) / pow(diameter, 2.0) +
                  33.6921784 / pow(diameter, 3.0) -
                  9.09993782 * length / pow(diameter, 3.0) -
                  2.15772652 * pow(length, 2.0) / pow(diameter, 3.0)) *
              pi *
              pow(diameter, 2.0) *
              length /
              40000;
      break;
    case WoodType.beech:
      volume = (0.542013151 -
              3.11830069 / diameter +
              44.3274566 / pow(diameter, 2.0) -
              235.972716 / pow(diameter, 3.0) -
              0.00107177084 * length -
              0.0000186003884 * diameter * length +
              0.000000880627782 * pow(diameter, 2.0) * length -
              0.00000000599567437 * pow(diameter, 3.0) * length) *
          pi *
          pow(diameter, 2.0) *
          length /
          40000;
      break;
    case WoodType.hornbeam:
      volume = pow(length - 3, 1.0) *
          (-0.0025 + 1948936330 * exp(3.2654487 / (1 - 1.09480205) * pow(diameter + 6, 1 - 1.09480205))) *
          (1 -
              0.01 *
                  (6.43257636 *
                      pow((pow(length - 3, 1.0) * (-0.0025 + 1948936330 * exp(3.2654487 / (1 - 1.09480205) * pow(diameter + 6, 1 - 1.09480205)))),
                          -0.0863612668)));
      break;
    case WoodType.ash:
      volume = -0.0002 +
          0.0000354843329 * (length - 2) * pow(diameter - 1, 2.0) +
          0.0000000864984059 * pow(length - 2, 2.0) * pow(diameter - 1, 2.0) -
          0.0000000667500906 * (length - 2) * pow(diameter - 1, 3.0);
      break;
    case WoodType.acacia:
      volume = ((0.90059752481353 -
                      9.11461319023597 / length +
                      22.785416455305 / pow(length, 2.0) +
                      60.2518940238899 / diameter -
                      4.8850163290717 * length / diameter +
                      0.0876827379294966 * pow(length, 2.0) / diameter) *
                  pi *
                  pow(diameter, 2.0) *
                  length /
                  40000 +
              (-1128.84760349393 / pow(diameter, 2.0) +
                      97.3463021858105 * length / pow(diameter, 2.0) -
                      1.88221931193961 * pow(length, 2.0) / pow(diameter, 2.0) +
                      5975.44628277277 / pow(diameter, 3.0) -
                      555.292126717648 * length / pow(diameter, 3.0) +
                      11.0987842199602 * pow(length, 2.0) / pow(diameter, 3.0)) *
                  pi *
                  pow(diameter, 2.0) *
                  length /
                  40000) *
          (0.818032686833711 * pow(1 - exp(-0.0718083194663755 * diameter), 0.181285086338607));
      break;
    case WoodType.birch:
      volume = pow(length - 4.5, 1.08471) *
          (-0.00115 + 31152.28 * exp(-23.18602 * pow(diameter + 5.5, -0.1425706))) *
          (1 -
              0.01 *
                  (17.25996107 *
                      exp(0.00505467839 *
                          pow((pow(length - 4.5, 1.08471) * (-0.00115 + 31152.28 * exp(-23.18602 * pow(diameter + 5.5, -0.1425706)))) + 0.1,
                              -2.057607473))));
      break;
    case WoodType.alder:
      volume = (1.00849912 *
              pow(
                  0.0000298786491 *
                          pow(diameter + 1, 2.25569529 - 0.064301769 * log10(diameter + 1)) *
                          pow(length, 0.771934004 + 0.063258505 * log10(length)) -
                      0.011,
                  0.992841601)) *
          ((0.0000298786491 *
                  pow(diameter + 1, 2.25569529 - 0.064301769 * log10(diameter + 1)) *
                  pow(length, 0.771934004 + 0.063258505 * log10(length)) *
                  (100 - (11.613 / (pow(diameter + 1, 0.0324) * pow(length, 0.0696)))) /
                  100) /
              (0.0000298786491 *
                  pow(diameter + 1, 2.25569529 - 0.064301769 * log10(diameter + 1)) *
                  pow(length, 0.771934004 + 0.063258505 * log10(length))));
      break;
    case WoodType.poplar:
      volume = 1.066333 *
          pow(0.000023284 * pow(diameter + 1, 1.8703 - 0.0068 * log10(diameter + 1)) * pow(length, 1.1769 + 0.0346 * log10(length)) - 0.01,
              1.027266) *
          (0.000023284 *
              pow(diameter + 1, 1.8703 - 0.0068 * log10(diameter + 1)) *
              pow(length, 1.1769 + 0.0346 * log10(length)) *
              (100 - (67.628 * pow(diameter + 1, 0.0024) / pow(length, 0.4331))) /
              100) /
          (0.000023284 * pow(diameter + 1, 1.8703 - 0.0068 * log10(diameter + 1)) * pow(length, 1.1769 + 0.0346 * log10(length)));
      break;
    case WoodType.none:
      break;
    case WoodType.maple:
      break;
    case WoodType.aspen:
      break;
    case WoodType.linden:
      break;
    case WoodType.willow:
      break;
    case WoodType.elm:
      break;
  }

  return volume;
}

double _calculateRaw(int category, int amount) {
  var volume = category == 0 ? 0.05 : category / 10;
  return volume * amount;
}
