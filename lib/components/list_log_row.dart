import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/extensions/string_extensions.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/wood_log.dart';

import '../colors.dart';
import '../helpers/translations_helpers.dart';
import '../services/quality_service.dart';

final getIt = GetIt.instance;

class ListLogRow extends StatelessWidget {
  final int index;
  final String qualityName;
  final WoodLog log;
  final Function? onTap;
  final Function()? onDeleteTap;
  final Function? onLongPress;

  ListLogRow({super.key, required this.index, required this.log, this.onTap, this.onLongPress, this.onDeleteTap})
      : qualityName = getIt.get<QualityService>().getQualityName(log.quality);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: lightGrayColor,
          height: 1,
        ),
        InkWell(
          onTap: () => onTap != null ? onTap!() : null,
          onLongPress: onLongPress != null ? () => onLongPress!() : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 6,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(child: Text(key: Key("$calculatorLogsFragmentTileLogKey$index$calculatorLogsFragmentTileLogNumberSuffix"), log.number.toString(), style: const TextStyle(fontWeight: FontWeight.bold))),
                      const SizedBox(width: 6),
                      Container(
                          constraints: const BoxConstraints(minWidth: 10),
                          child: Text(
                            log.isRhizome ? 'x' : ' ',
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(width: 6),
                      Flexible(
                          child: Text(
                            key: Key("$calculatorLogsFragmentTileLogKey$index$calculatorLogsFragmentTileLogVolumeSuffix"),
                        '${log.volume.toStringAsFixed(2)} m³',
                        style: const TextStyle(fontSize: 16),
                      )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        key: Key("$calculatorLogsFragmentTileLogKey$index$calculatorLogsFragmentTileLogParamsSuffix"),
                        "${getWoodName(log.woodType)}, ${log.length?.toStringAsFixed(1)}, ${log.diameter?.toStringAsFixed(1)}, ${qualityName.abbreviate(11)}",
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(width: 10),
                      Flexible(child: IconButton(key: Key("$calculatorLogsFragmentTileLogKey$index$calculatorLogsFragmentTileLogDeleteSuffix"),onPressed: onDeleteTap, icon: const Icon(Icons.delete_forever), color: warningColor)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
