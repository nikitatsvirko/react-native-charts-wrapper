package com.github.wuxudong.rncharts.charts;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.text.DecimalFormat;

public class FloatFormatter implements IAxisValueFormatter, IValueFormatter {

    private DecimalFormat mFormat;

    public FloatFormatter(String value) {
        mFormat = new DecimalFormat(value);
    }

    @Override
    public String getFormattedValue(float value, AxisBase yAxis) {
        String result = value != 0.0f ? String.valueOf(value) : " ";
        return result;
    }

    @Override
    public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
        String result = value != 0.0f ? String.valueOf(value) : " ";
        return result;
    }
}
