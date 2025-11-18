import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:kubirovacka_one/helpers/persistence_helper.dart';
import 'package:kubirovacka_one/helpers/translations_helpers.dart';
import 'package:kubirovacka_one/models/wood_log_list.dart';

import '../enums/wood_log_type.dart';
import '../models/wood_log.dart'; // For date formatting, add 'intl' to pubspec.yaml

/// Generates an XLSX report from a WoodLogList.
///
/// [list] - The WoodLogList data to be included in the report.
/// [useDetailedRaws] - A boolean to switch between default and detailed "Raws" sheets.
/// Returns an [Excel] object ready to be saved to a file.
Future<Excel> generateExcelReport(WoodLogList list, bool useDetailedRaws) async {

  var excel = Excel.createExcel();

  // --- Hardcoded Czech sheet names (as requested) ---
  const sheetNameLogs = 'Klády';
  const sheetNameRaws = 'Suráky';
  const sheetNameSummary = 'Sumář';

  // --- Create Sheets ---
  var sheetLogs = excel[sheetNameLogs];
  var sheetRaws = excel[sheetNameRaws];
  var sheetSummary = excel[sheetNameSummary];

  // --- Prepare Data ---
  // Sort logs by number, similar to the C# OrderBy
  final logs = await getLogs(list.id)..sort((a, b) => a.number.compareTo(b.number));

  // --- Setup Styles ---
  final titleStyle = CellStyle(
    fontFamily: getFontFamily(FontFamily.Arial),
    fontSize: 16,
    bold: true,
  );
  final rightAlignStyle = CellStyle(horizontalAlign: HorizontalAlign.Right);
  final boldStyle = CellStyle(bold: true);
  final defaultBorderedStyle = CellStyle(
    topBorder: Border(borderStyle: BorderStyle.Thin),
    bottomBorder: Border(borderStyle: BorderStyle.Thin),
    leftBorder: Border(borderStyle: BorderStyle.Thin),
    rightBorder: Border(borderStyle: BorderStyle.Thin),
  );
  final boldBorderedStyle = CellStyle(
    bold: true,
    topBorder: Border(borderStyle: BorderStyle.Thin),
    bottomBorder: Border(borderStyle: BorderStyle.Thin),
    leftBorder: Border(borderStyle: BorderStyle.Thin),
    rightBorder: Border(borderStyle: BorderStyle.Thin),
  );

  // --- Generate Headers for all sheets ---
  // Note: The C# code combined multiple lists' names. This code uses one.
  _generateHeader(sheetLogs, list, titleStyle, rightAlignStyle);
  _generateHeader(sheetRaws, list, titleStyle, rightAlignStyle);
  _generateHeader(sheetSummary, list, titleStyle, rightAlignStyle);

  // --- Generate Content for each sheet ---
  final logsLastRow = _generateLogsSheet(sheetLogs, logs, boldStyle, boldBorderedStyle, defaultBorderedStyle);

  int rawsLastRow;
  if (useDetailedRaws) {
    rawsLastRow = _generateDetailedRawsSheet(sheetRaws, logs, boldStyle, boldBorderedStyle, defaultBorderedStyle);
  } else {
    rawsLastRow = _generateDefaultRawsSheet(sheetRaws, logs, boldStyle, boldBorderedStyle, defaultBorderedStyle);
  }

  _generateSummarySheet(sheetSummary, boldStyle, logsLastRow, rawsLastRow, sheetNameLogs, sheetNameRaws);

  // Clean up default sheet created by the library
  excel.delete('Sheet1');

  return excel;
}

// --- PRIVATE HELPER FUNCTIONS ---

void _generateHeader(Sheet sheet, WoodLogList list, CellStyle titleStyle, CellStyle rightAlignStyle) {
  sheet.merge(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 0), CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: 0));
  sheet.merge(CellIndex.indexByColumnRow(columnIndex: 7, rowIndex: 0), CellIndex.indexByColumnRow(columnIndex: 8, rowIndex: 0));

  sheet.setRowHeight(0, 25);

  // Title Cell
  final titleCell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 0));
  titleCell.value = TextCellValue(list.name);
  titleCell.cellStyle = titleStyle;

  // CreatedAt Cell
  final createdAtCell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: 7, rowIndex: 0));
  // Requires 'intl' package for custom date formatting
  final formattedDate = DateFormat('d. MMMM yyyy', 'cs_CZ').format(list.createdAt);
  createdAtCell.value = TextCellValue(formattedDate);
  createdAtCell.cellStyle = rightAlignStyle;
}

int _generateLogsSheet(Sheet sheet, List<WoodLog> logs, CellStyle boldStyle, CellStyle boldBorderedStyle, CellStyle defaultBorderedStyle) {
  const headerRowIndex = 2;
  const startDataRowIndex = 3;

  final columns = [
    "Číslo", "Oddenek", "Dřevina", "Délka [m]", "Průměr [cm]",
    "Objem [m³]", "Jakost", "JPRL", "Typ"
  ];

  for (var i = 0; i < columns.length; i++) {
    final cell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: headerRowIndex));
    cell.value = TextCellValue(columns[i]);
    cell.cellStyle = boldBorderedStyle;
  }

  var rowIndex = startDataRowIndex;
  final filteredLogs = logs.where((log) => log.woodLogType != WoodLogType.raw);

  for (final log in filteredLogs) {
    _createBorderedNumericCell(sheet, 0, rowIndex, log.number, defaultBorderedStyle);
    _createBorderedTextCell(sheet, 1, rowIndex, log.isRhizome ? "x" : "", defaultBorderedStyle);
    _createBorderedTextCell(sheet, 2, rowIndex, getWoodName(log.woodType), defaultBorderedStyle); // Simplified localization
    if (log.length != null) _createBorderedNumericCell(sheet, 3, rowIndex, (log.length! * 100).round() / 100, defaultBorderedStyle);
    if (log.diameter != null) _createBorderedNumericCell(sheet, 4, rowIndex, (log.diameter! * 100).round() / 100, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 5, rowIndex, (log.volume * 100).round() / 100, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 6, rowIndex, log.quality, defaultBorderedStyle);
    _createBorderedTextCell(sheet, 7, rowIndex, log.fsdu ?? '', defaultBorderedStyle);

    String typeText;
    switch(log.woodLogType) {
      case WoodLogType.logUpRight:
        typeText = "Na stojato";
        break;
      case WoodLogType.logWithoutBark:
        typeText = "Bez kůry";
        break;
      default:
        typeText = "";
    }
    _createBorderedTextCell(sheet, 8, rowIndex, typeText, defaultBorderedStyle);
    rowIndex++;
  }

  // Stats Row
  final statsRowIndex = rowIndex + 1;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: statsRowIndex))..value = TextCellValue("Množství:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(103, A4:A$rowIndex)');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: statsRowIndex))..value = TextCellValue("Počet oddenků:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: statsRowIndex)).value = FormulaCellValue('SUMPRODUCT((B4:B$rowIndex="x")*(SUBTOTAL(103,OFFSET(B4,ROW(B4:B$rowIndex)-MIN(ROW(B4:B$rowIndex)),0))))');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: statsRowIndex))..value = TextCellValue("Celkový objem [m³]:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(109,F4:F$rowIndex)');

  // NOTE: The `excel` package does not support setting AutoFilter. This functionality is omitted.

  // Set Column Widths (values are approximate character widths)
  sheet.setColumnWidth(0, 10); sheet.setColumnWidth(1, 10); sheet.setColumnWidth(2, 12);
  sheet.setColumnWidth(3, 12); sheet.setColumnWidth(4, 12); sheet.setColumnWidth(5, 12);
  sheet.setColumnWidth(6, 8); sheet.setColumnWidth(7, 10); sheet.setColumnWidth(8, 12);

  return statsRowIndex;
}

int _generateDefaultRawsSheet(Sheet sheet, List<WoodLog> logs, CellStyle boldStyle, CellStyle boldBorderedStyle, CellStyle defaultBorderedStyle) {
  const headerRowIndex = 2;
  const startDataRowIndex = 3;

  final rawLogs = logs.where((l) => l.woodLogType == WoodLogType.raw).toList();
  if (rawLogs.isEmpty) return startDataRowIndex;

  // Find max category
  final maxCategory = rawLogs.fold<int>(0, (max, l) => l.rawCategory! > max ? l.rawCategory! : max);

  final columns = ["Kategorie", "Oddenky", "Vrchy", "Objem [m³]"];
  for (var i = 0; i < columns.length; i++) {
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: headerRowIndex))
      ..value = TextCellValue(columns[i])
      ..cellStyle = boldBorderedStyle;
  }

  var rowIndex = startDataRowIndex;
  for (var i = 0; i <= maxCategory; i++) {
    final rhizomes = rawLogs.where((l) => l.isRhizome && l.rawCategory == i).length;
    final tops = rawLogs.where((l) => !l.isRhizome && l.rawCategory == i).length;
    final volume = rawLogs.where((l) => l.rawCategory == i).fold<double>(0.0, (sum, item) => sum + item.volume);

    _createBorderedNumericCell(sheet, 0, rowIndex, i, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 1, rowIndex, rhizomes, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 2, rowIndex, tops, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 3, rowIndex, (volume * 100).round() / 100, defaultBorderedStyle);
    rowIndex++;
  }

  // Stats Row
  final statsRowIndex = rowIndex + 1;
  final dataEndRow = rowIndex;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: statsRowIndex))..value = TextCellValue("Množství:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(109, B4:C$dataEndRow)');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: statsRowIndex))..value = TextCellValue("Počet oddenků:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(109, B4:B$dataEndRow)');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: statsRowIndex))..value = TextCellValue("Celkový objem [m³]:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(109, D4:D$dataEndRow)');

  sheet.setColumnWidth(0, 12); sheet.setColumnWidth(1, 12); sheet.setColumnWidth(2, 12);
  sheet.setColumnWidth(3, 15); sheet.setColumnWidth(4, 20); sheet.setColumnWidth(5, 15);

  return statsRowIndex;
}

int _generateDetailedRawsSheet(Sheet sheet, List<WoodLog> logs, CellStyle boldStyle, CellStyle boldBorderedStyle, CellStyle defaultBorderedStyle) {
  const headerRowIndex = 2;
  const startDataRowIndex = 3;

  final columns = ["Kategorie", "Objem [m³]", "Oddenek", "Dřevina", "Jakost", "JPRL"];
  for (var i = 0; i < columns.length; i++) {
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: headerRowIndex))
      ..value = TextCellValue(columns[i])
      ..cellStyle = boldBorderedStyle;
  }

  var rowIndex = startDataRowIndex;
  final filteredLogs = logs.where((log) => log.woodLogType == WoodLogType.raw);

  for (final log in filteredLogs) {
    _createBorderedNumericCell(sheet, 0, rowIndex, log.rawCategory!, defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 1, rowIndex, (log.volume * 100).round() / 100, defaultBorderedStyle);
    _createBorderedTextCell(sheet, 2, rowIndex, log.isRhizome ? "x" : "", defaultBorderedStyle);
    _createBorderedTextCell(sheet, 3, rowIndex, getWoodName(log.woodType), defaultBorderedStyle);
    _createBorderedNumericCell(sheet, 4, rowIndex, log.quality, defaultBorderedStyle);
    _createBorderedTextCell(sheet, 5, rowIndex, log.fsdu ?? '', defaultBorderedStyle);
    rowIndex++;
  }

  // Stats Row
  final statsRowIndex = rowIndex + 1;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: statsRowIndex))..value = TextCellValue("Množství:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(103, A4:A$rowIndex)');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: statsRowIndex))..value = TextCellValue("Počet oddenků:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: statsRowIndex)).value = FormulaCellValue('SUMPRODUCT((C4:C$rowIndex="x")*(SUBTOTAL(103,OFFSET(C4,ROW(C4:C$rowIndex)-MIN(ROW(C4:C$rowIndex)),0))))');

  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: statsRowIndex))..value = TextCellValue("Celkový objem [m³]:")..cellStyle = boldStyle;
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: statsRowIndex)).value = FormulaCellValue('SUBTOTAL(109, B4:B$rowIndex)');

  sheet.setColumnWidth(0, 12); sheet.setColumnWidth(1, 12); sheet.setColumnWidth(2, 12);
  sheet.setColumnWidth(3, 12); sheet.setColumnWidth(4, 12); sheet.setColumnWidth(5, 12);

  return statsRowIndex;
}

void _generateSummarySheet(Sheet sheet, CellStyle boldStyle, int logsLastRow, int rawsLastRow, String sheetNameLogs, String sheetNameRaws) {
  int rowIndex = 2;

  // Helper to create a text cell in column A
  void createLabel(String text) {
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: rowIndex)).value = TextCellValue(text);
  }

  // Helper to create a FormulaCellValue cell in column B
  void createFormulaCellValue(String formulaCellValue) {
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: rowIndex)).value = FormulaCellValue(formulaCellValue);
  }

  // --- Klády (Logs) Summary ---
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: rowIndex++))..value = TextCellValue("Klády")..cellStyle = boldStyle;

  createLabel("Množství:");
  createFormulaCellValue("'$sheetNameLogs'!B${logsLastRow + 1}");
  rowIndex++;

  createLabel("Počet oddenků:");
  createFormulaCellValue("'$sheetNameLogs'!D${logsLastRow + 1}");
  rowIndex++;

  createLabel("Objem [m³]:");
  createFormulaCellValue("'$sheetNameLogs'!F${logsLastRow + 1}");
  rowIndex+=2;

  // --- Suráky (Raws) Summary ---
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: rowIndex++))..value = TextCellValue("Suráky")..cellStyle = boldStyle;

  createLabel("Množství:");
  createFormulaCellValue("'$sheetNameRaws'!B${rawsLastRow + 1}");
  rowIndex++;

  createLabel("Počet oddenků:");
  createFormulaCellValue("'$sheetNameRaws'!D${rawsLastRow + 1}");
  rowIndex++;

  createLabel("Objem [m³]:");
  createFormulaCellValue("'$sheetNameRaws'!F${rawsLastRow + 1}");
  rowIndex+=2;

  // --- Dohromady (Total) Summary ---
  sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: rowIndex++))..value = TextCellValue("Dohromady")..cellStyle = boldStyle;

  createLabel("Množství:");
  createFormulaCellValue("B4+B9");
  rowIndex++;

  createLabel("Počet oddenků:");
  createFormulaCellValue("B5+B10");
  rowIndex++;

  createLabel("Objem [m³]:");
  createFormulaCellValue("B6+B11");
  rowIndex++;

  createLabel("Průměrná hmotnatost kusu [m³]:");
  createFormulaCellValue("ROUND(B16/B14, 2)");
  rowIndex++;

  createLabel("Průměrná hmotnatost stromu [m³]:");
  createFormulaCellValue("ROUND(B16/B15, 2)");
  rowIndex++;

  // Auto-fit columns for readability
  sheet.setColumnAutoFit(0);
  sheet.setColumnWidth(1, 8);
}

// --- Cell Creation Utilities ---
void _createBorderedTextCell(Sheet sheet, int colIndex, int rowIndex, String value, CellStyle style) {
  final cell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: colIndex, rowIndex: rowIndex));
  cell.value = TextCellValue(value);
  cell.cellStyle = style;
}

void _createBorderedNumericCell(Sheet sheet, int colIndex, int rowIndex, num value, CellStyle style) {
  final cell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: colIndex, rowIndex: rowIndex));
  if (value is int) {
    cell.value = IntCellValue(value);
  } else {
    cell.value = DoubleCellValue(value.toDouble());
  }
  cell.cellStyle = style;
}