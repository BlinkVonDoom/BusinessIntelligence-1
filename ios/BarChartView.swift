//
//  BarChartView.swift
//  BusinessIntelligence
//
//  Created by David Rankin on 5/16/22.
//

import Charts
import SwiftUI

struct BarChartView: UIViewRepresentable {
  let dataEntries: [BarChartDataEntry]
  
  func makeUIView(context: Context) -> BarChartView {
    return BarChartView()
  }
  
  func updateUIView(_ uiView: BarChartView, context: Context) {
    let dataSet = dataSet = BarChartDataSet(entries: dataEntries)
    dataSet = "Transactions"
    uiView.noDataText = "No Data"
    uiView.rightAxis.enabled = false
    uiView.zoom(scaleX: 1.5, scaleY: 1, x: 0, y: 0)
    uiView.scaleXEnabled = false
    uiView.data = BarChartData(dataSet: dataSet)
    formatDataSet(dataSet: dataSet)
    formatLeftAxis(leftAxis: uiView.leftAxis)
    formatXAxis(xAxis: uiView.xAxis)
  }
  
  func formatDataSet(dataSet: BarChartDataSet) {
    dataSet.colors = [.blue]
  }
  
  func formatLeftAxis(leftAxis: YAxis) {
    leftAxis.axisMinimum = 0
  }
  
  func formatXAxis(xAxis: xAxis) {
    xAxis.labelPosition = .bottom
  }
  
  func formatLegend(legend: legend) {
    
  }
}
