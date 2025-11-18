import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/extensions/string_extensions.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/services/quality_service.dart';

import '../colors.dart';
import '../helpers/translations_helpers.dart';

final getIt = GetIt.instance;

class ListRawRow extends StatelessWidget {
  final int index;
  final String qualityName;
  final WoodLog log;
  final Function? onTap;
  final Function()? onDeleteTap;
  final Function? onLongPress;
  final bool selected;

  ListRawRow({super.key, required this.log, this.onTap, this.onLongPress, this.onDeleteTap, required this.selected, required this.index})
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
            color: selected ? primaryExtraTransparentColor : Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Row(
                    children: [
                      Flexible(child: Text(log.rawCategory.toString(), style: const TextStyle(fontWeight: FontWeight.bold))),
                      const SizedBox(width: 6),
                      Text(
                          key: Key("$calculatorRawsFragmentTileRawKey$index$calculatorRawsFragmentTileRawRhizomeSuffix"),
                          log.isRhizome ? 'x' : ' ',
                          style: const TextStyle(fontSize: 16)),
                      const SizedBox(width: 6),
                      Flexible(
                          child: Text(
                        '${log.volume.toStringAsFixed(2)} m³',
                        style: const TextStyle(fontSize: 16),
                      )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                          child: Text("${getWoodName(log.woodType)}, ${qualityName.abbreviate(11)}",
                              style: const TextStyle(fontSize: 12, color: Colors.grey))),
                      const SizedBox(width: 10),
                      Flexible(
                          child: IconButton(
                              key: Key("$calculatorRawsFragmentTileRawKey$index$calculatorRawsFragmentTileRawDeleteSuffix"),
                              onPressed: onDeleteTap,
                              icon: const Icon(Icons.delete_forever),
                              color: warningColor)),
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
