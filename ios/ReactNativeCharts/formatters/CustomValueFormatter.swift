import Foundation
import Charts

class CustomValueFormatter: DefaultValueFormatter {
  
  override func stringForValue(_ value: Double,
                               entry: ChartDataEntry,
                               dataSetIndex: Int,
                               viewPortHandler: ViewPortHandler?) -> String
  {
    if block != nil
    {
      return block!(value, entry, dataSetIndex, viewPortHandler)
    }
    else
    {
      if (value == 0) {
        return ""
      } else {
        return formatter?.string(from: NSNumber(floatLiteral: value)) ?? ""
      }
    }
  }
}
