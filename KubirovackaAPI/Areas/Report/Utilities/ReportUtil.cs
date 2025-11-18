using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Utilities;
using Microsoft.Extensions.Localization;
using NPOI.SS.UserModel;
using NPOI.SS.Util;
using NPOI.XSSF.UserModel;

namespace KubirovackaAPI.Areas.Report.Utilities
{
    public class ReportUtil : IReportUtil
    {
        private readonly IStringLocalizer _localizer;

        public ReportUtil(IStringLocalizerFactory stringLocalizerFactory)
        {
            _localizer = LocalizationUtil.getLocalizer(stringLocalizerFactory);
        }

        public async Task<string> GenerateXLSX(List<WoodLogList> woodLogLists, bool detailedRaws)
        {
            if (Directory.Exists("Generated") == false)
            {
                DirectoryInfo di = Directory.CreateDirectory("Generated");
            }

            var fileName = "Generated/" + ($"{woodLogLists[0].Name}_{DateTime.UtcNow.Millisecond}.xlsx")
                           .RemoveDiacritics()
                           .Replace(" ", "_")
                           .Replace("/", "-")
                           .Replace(":", "-")
                           .Replace("\\", "-");

            await using var fs = new FileStream(fileName, FileMode.OpenOrCreate, FileAccess.ReadWrite);
            IWorkbook workbook = new XSSFWorkbook();

            var titleStyle = workbook.CreateCellStyle();
            var rightAlignStyle = workbook.CreateCellStyle();
            var defaultBorderedStyle = workbook.CreateCellStyle();
            var boldBorderedStyle = workbook.CreateCellStyle();
            var boldStyle = workbook.CreateCellStyle();
            SetupStyles();

            var sheetLogs = workbook.CreateSheet(_localizer["Klády"]);
            var sheetRaws = workbook.CreateSheet(_localizer["Suráky"]);
            var sheetSummary = workbook.CreateSheet(_localizer["Sumář"]);

            var logs = new List<WoodLog>();
            woodLogLists.ForEach(wl =>
            {
                logs.AddRange(wl.Logs.OrderBy(l => l.Number).ToList());
            });
            
            GenerateHeader(ref sheetLogs);
            GenerateHeader(ref sheetRaws);
            GenerateHeader(ref sheetSummary);

            GenerateLogsSheet(out var logsLastRow);
            int rawsLastRow;

            if (detailedRaws)
            {
                GenerateDetailedRawsSheet(out rawsLastRow);
            }
            else
            {
                GenerateDefaultRawsSheet(out rawsLastRow);
            }

            GenerateSummarySheet();

            workbook.Write(fs);
            return fileName;
            
            
            
            void GenerateHeader(ref ISheet sheet) {
                    sheet.AddMergedRegion(new CellRangeAddress(0, 0, 0, 5));
                    sheet.AddMergedRegion(new CellRangeAddress(0, 0, 7, 8));
                    var rowL = sheet.CreateRow(0);
                    rowL.HeightInPoints = 20;

                    var titleCell = rowL.CreateCell(0);
                    titleCell.CellStyle = titleStyle;
                    var listName = "";
                    var listDate = "";
                    foreach (var woodLogList in woodLogLists)
                    {
                        if (listName == "")
                        {
                            listName += woodLogList.Name;
                            listDate += woodLogList.CreatedAt.DateTime.ToLongDateString();
                        }
                        else
                        {
                            listName += ", " + woodLogList.Name;
                            listDate += ", " + woodLogList.CreatedAt.DateTime.ToLongDateString();
                        }
                    }
                    titleCell.SetCellValue(listName);

                    var createdAtCell = rowL.CreateCell(7);
                    createdAtCell.CellStyle = rightAlignStyle;
                    createdAtCell.SetCellValue(listDate);
            }

            void GenerateLogsSheet(out int logsLastRow)
            {
                var row = sheetLogs.CreateRow(2);
                var logColumns = new[]
                {
                    _localizer["Číslo"],
                    _localizer["Oddenek"],
                    _localizer["Dřevina"],
                    _localizer["Délka [m]"],
                    _localizer["Průměr [cm]"],
                    _localizer["Objem [m³]"],
                    _localizer["Jakost"],
                    _localizer["JPRL"],
                    _localizer["Typ"]
                };

                for (var i = 0; i < logColumns.Length; i++)
                {
                    var cell = row.CreateCell(i);
                    cell.SetCellType(CellType.String);
                    cell.CellStyle = boldBorderedStyle;
                    cell.SetCellValue(logColumns[i]);
                }
                
                var rowIndex = 2;
                
                foreach (var log in logs.Where(log => log.WoodLogType != WoodLogType.Raw))
                {
                    rowIndex++;
                    row = sheetLogs.CreateRow(rowIndex);

                    CreateBorderedNumericCell<int>(row, 0, log.Number);
                    CreateBorderedTextCell(row, 1, log.IsRhizome ? "x" : "");

                    CreateBorderedTextCell(row, 2, _localizer[log.WoodType.ToString()]);
                    if (log.Length != null) CreateBorderedNumericCell<float>(row, 3, Math.Round(log.Length.Value, 2));
                    if (log.Diameter != null)
                        CreateBorderedNumericCell<float>(row, 4, Math.Round(log.Diameter.Value, 2));
                    CreateBorderedNumericCell<float>(row, 5, Math.Round(log.Volume, 2));
                    CreateBorderedNumericCell<int>(row, 6, log.Quality);
                    CreateBorderedTextCell(row, 7, log.Fsdu);
                    
                    CreateBorderedTextCell(row, 8, log.WoodLogType switch
                    {
                        WoodLogType.LogUpRight => _localizer["Na stojato"],
                        WoodLogType.LogWithOutBark => _localizer["Bez kůry"],
                        _ => ""
                    });
                }

                rowIndex += 2;
                var statsRow = sheetLogs.CreateRow(rowIndex);
                var statCell = statsRow.CreateCell(0);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Množství:"]);
                statCell = statsRow.CreateCell(1);
                statCell.SetCellFormula($"SUBTOTAL(103, A4:A{rowIndex - 1})");

                statCell = statsRow.CreateCell(2);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Počet oddenků:"]);
                statCell = statsRow.CreateCell(3);
                statCell.SetCellFormula($"SUMPRODUCT((B4:B{rowIndex - 1}=\"x\")*(SUBTOTAL(103,OFFSET(B4,ROW(B4:B{rowIndex - 1})-MIN(ROW(B4:B{rowIndex - 1})),0))))");

                statCell = statsRow.CreateCell(4);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Celkový objem [m³]:"]);
                statCell = statsRow.CreateCell(5);
                statCell.SetCellFormula($"SUBTOTAL(109,F4:F{rowIndex - 1})");


                sheetLogs.SetAutoFilter(new CellRangeAddress(2, rowIndex - 2, 0, 8));
                for (var i = 0; i <= 8; i++)
                {
                    var size = i switch
                    {
                        0 => 4500,
                        1 => 1800,
                        2 => 4000,
                        3 => 2500,
                        4 => 3000,
                        5 => 4000,
                        6 => 2500,
                        7 => 2800,
                        8 => 2900,
                        _ => 3400
                    };
                    sheetLogs.SetColumnWidth(i, size);
                }

                logsLastRow = rowIndex;
            }

            void GenerateDefaultRawsSheet(out int rawsLastRow)
            {
                var maxCategory = logs.Where(l => l.WoodLogType == WoodLogType.Raw)
                    .OrderByDescending(l => l.RawCategory).Select(l => l.RawCategory).FirstOrDefault() ?? -1;
                if (maxCategory == -1)
                {
                    rawsLastRow = 4;
                    return;
                }
                
                var row = sheetRaws.CreateRow(2);
                var rawColumns = new[]
                {
                    _localizer["Kategorie"],
                    _localizer["Oddenky"],
                    _localizer["Vrchy"],
                    _localizer["Objem [m³]"]
                };

                for (var i = 0; i < rawColumns.Length; i++)
                {
                    var cell = row.CreateCell(i);
                    cell.SetCellType(CellType.String);
                    cell.CellStyle = boldBorderedStyle;
                    cell.SetCellValue(rawColumns[i]);
                }
                
                var rowIndex = 2;

                for (var i = 0; i <= maxCategory; i++)
                {
                    rowIndex++;
                    row = sheetRaws.CreateRow(rowIndex);

                    CreateBorderedNumericCell<int>(row, 0, i);
                    CreateBorderedNumericCell<int>(row, 1, 
                        logs.Count(l => l.WoodLogType == WoodLogType.Raw && l.IsRhizome && l.RawCategory == i));
                    CreateBorderedNumericCell<int>(row, 2, 
                        logs.Count(l => l.WoodLogType == WoodLogType.Raw && !l.IsRhizome && l.RawCategory == i));
                    CreateBorderedNumericCell<float>(row, 3,
                        Math.Round(logs.Where(l => l.WoodLogType == WoodLogType.Raw && l.RawCategory == i).Sum(l => l.Volume), 2));
                }

                rowIndex += 2;
                var statsRow = sheetRaws.CreateRow(rowIndex);
                var statCell = statsRow.CreateCell(0);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Množství:"]);
                statCell = statsRow.CreateCell(1);
                statCell.SetCellFormula($"SUBTOTAL(109, B4:C{rowIndex - 1})");

                statCell = statsRow.CreateCell(2);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Počet oddenků:"]);
                statCell = statsRow.CreateCell(3);
                statCell.SetCellFormula($"SUBTOTAL(109, B4:B{rowIndex - 1})");

                statCell = statsRow.CreateCell(4);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Celkový objem [m³]:"]);
                statCell = statsRow.CreateCell(5);
                statCell.SetCellFormula($"SUBTOTAL(109, D4:D{rowIndex - 1})");


                sheetRaws.SetAutoFilter(new CellRangeAddress(2, rowIndex - 2, 0, 2));
                for (var i = 0; i <= 5; i++)
                {
                    var size = i switch
                    {
                        0 => 4000,
                        1 => 3400,
                        2 => 4000,
                        3 => 3000,
                        4 => 5000,
                        5 => 3400,
                        _ => 3400
                    };
                    sheetRaws.SetColumnWidth(i, size);
                }

                rawsLastRow = rowIndex;
            }
            
            void GenerateDetailedRawsSheet(out int rawsLastRow)
            {
                var row = sheetRaws.CreateRow(2);
                var rawColumns = new[]
                {
                    _localizer["Kategorie"],
                    _localizer["Objem [m³]"],
                    _localizer["Oddenek"],
                    _localizer["Dřevina"],
                    _localizer["Jakost"],
                    _localizer["JPRL"],
                };

                for (var i = 0; i < rawColumns.Length; i++)
                {
                    var cell = row.CreateCell(i);
                    cell.SetCellType(CellType.String);
                    cell.CellStyle = boldBorderedStyle;
                    cell.SetCellValue(rawColumns[i]);
                }
                
                var rowIndex = 2;

                foreach (var log in logs.Where(log => log.WoodLogType == WoodLogType.Raw))
                {
                    rowIndex++;
                    row = sheetRaws.CreateRow(rowIndex);

                    CreateBorderedNumericCell<int>(row, 0, log.RawCategory);
                    CreateBorderedNumericCell<float>(row, 1, Math.Round(log.Volume, 2));
                    if (log.IsRhizome)
                    {
                        CreateBorderedTextCell(row, 2, "x");
                    }
                    else
                    {
                        CreateBorderedTextCell(row, 2, "");
                    }
                    CreateBorderedTextCell(row, 3, _localizer[log.WoodType.ToString()]);
                    CreateBorderedNumericCell<int>(row, 4, log.Quality);
                    CreateBorderedTextCell(row, 5, log.Fsdu);
                }

                rowIndex += 2;
                var statsRow = sheetRaws.CreateRow(rowIndex);
                var statCell = statsRow.CreateCell(0);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Množství:"]);
                statCell = statsRow.CreateCell(1);
                statCell.SetCellFormula($"SUBTOTAL(103, A4:A{rowIndex - 1})");

                statCell = statsRow.CreateCell(2);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Počet oddenků:"]);
                statCell = statsRow.CreateCell(3);
                statCell.SetCellFormula($"SUMPRODUCT((C4:C{rowIndex - 1}=\"x\")*(SUBTOTAL(103,OFFSET(C4,ROW(C4:C{rowIndex - 1})-MIN(ROW(C4:C{rowIndex - 1})),0))))");

                statCell = statsRow.CreateCell(4);
                statCell.CellStyle = boldStyle;
                statCell.SetCellValue(_localizer["Celkový objem [m³]:"]);
                statCell = statsRow.CreateCell(5);
                statCell.SetCellFormula($"SUBTOTAL(109, B4:B{rowIndex - 1})");


                if (logs.Count(l => l.WoodLogType == WoodLogType.Raw) > 0)
                {
                    sheetRaws.SetAutoFilter(new CellRangeAddress(2, rowIndex - 2, 0, 5));
                }

                for (var i = 0; i <= 5; i++)
                {
                    var size = i switch
                    {
                        0 => 3000,
                        1 => 3400,
                        2 => 4000,
                        3 => 3000,
                        4 => 5000,
                        5 => 3400,
                        _ => 3400
                    };
                    sheetRaws.SetColumnWidth(i, size);
                }

                rawsLastRow = rowIndex;
            }
            void GenerateSummarySheet()
            {
                var rowIndex = 2;

                var cell = NextRow().CreateCell(0);
                cell.CellStyle = boldStyle;
                cell.SetCellValue(_localizer["Klády"]);

                var row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Množství:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Klády"]}!B{logsLastRow + 1}");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Počet oddenků:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Klády"]}!D{logsLastRow + 1}");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Objem [m³]:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Klády"]}!F{logsLastRow + 1}");
                NextRow();

                cell = NextRow().CreateCell(0);
                cell.CellStyle = boldStyle;
                cell.SetCellValue(_localizer["Suráky"]);

                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Množství:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Suráky"]}!B{rawsLastRow + 1}");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Počet oddenků:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Suráky"]}!D{rawsLastRow + 1}");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Objem [m³]:"]);
                CreateNumericCell(row, 1).SetCellFormula($"{_localizer["Suráky"]}!F{rawsLastRow + 1}");
                NextRow();

                cell = NextRow().CreateCell(0);
                cell.CellStyle = boldStyle;
                cell.SetCellValue(_localizer["Dohromady"]);

                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Množství:"]);
                CreateNumericCell(row, 1).SetCellFormula("B4+B9");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Počet oddenků:"]);
                CreateNumericCell(row, 1).SetCellFormula("B5+B10");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Objem [m³]:"]);
                CreateNumericCell(row, 1).SetCellFormula("B6+B11");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Průměrná hmotnatost kusu [m³]:"]);
                CreateNumericCell(row, 1).SetCellFormula("ROUND(B16/B14, 2)");
                row = NextRow();
                CreateTextCell(row, 0).SetCellValue(_localizer["Průměrná hmotnatost stromu [m³]:"]);
                CreateNumericCell(row, 1).SetCellFormula("ROUND(B16/B15, 2)");

                sheetSummary.AutoSizeColumn(0);
                sheetSummary.AutoSizeColumn(1);

                IRow NextRow()
                {
                    var rowL = sheetSummary.CreateRow(rowIndex);
                    rowIndex++;
                    return rowL;
                }
            }

            void SetupStyles()
            {
                var titleFont = workbook.CreateFont();
                titleFont.FontHeightInPoints = 16;
                titleFont.FontName = "Arial";
                titleStyle.SetFont(titleFont);

                rightAlignStyle.Alignment = HorizontalAlignment.Right;

                defaultBorderedStyle.BorderTop = BorderStyle.Thin;
                defaultBorderedStyle.BorderBottom = BorderStyle.Thin;
                defaultBorderedStyle.BorderLeft = BorderStyle.Thin;
                defaultBorderedStyle.BorderRight = BorderStyle.Thin;

                var boldFont = workbook.CreateFont();
                boldFont.IsBold = true;
                boldBorderedStyle.BorderTop = BorderStyle.Thin;
                boldBorderedStyle.BorderBottom = BorderStyle.Thin;
                boldBorderedStyle.BorderLeft = BorderStyle.Thin;
                boldBorderedStyle.BorderRight = BorderStyle.Thin;
                boldBorderedStyle.SetFont(boldFont);

                boldStyle.SetFont(boldFont);
            }

            ICell CreateBorderedNumericCell<T>(IRow row, int cellIndex, object value)
            {
                var cell = CreateNumericCell(row, cellIndex);
                cell.CellStyle = defaultBorderedStyle;
                if (typeof(T) == typeof(int))
                {
                    cell.SetCellValue((int) value);
                }
                else
                {
                    cell.SetCellValue((double) value);
                }

                return cell;
            }
            ICell CreateBorderedTextCell(IRow row, int cellIndex, string value)
            {
                var cell = CreateTextCell(row, cellIndex);
                cell.CellStyle = defaultBorderedStyle;
                cell.SetCellValue(value);
                return cell;
            }
            ICell CreateNumericCell(IRow row, int i)
            {
                var cell = row.CreateCell(i);
                cell.SetCellType(CellType.Numeric);
                return cell;
            }

            ICell CreateTextCell(IRow row, int i)
            {
                var cell = row.CreateCell(i);
                cell.SetCellType(CellType.String);
                return cell;
            }   
        }
    }
}