import Foundation
import Charts

class FloatValueFormatter: DefaultValueFormatter {
  
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
        var r = String(value)
        return r
      }
    }
  }
}

