//
//  RadarChartView.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI
import DGCharts

struct TriangleRadarChartView: UIViewRepresentable {
    let entries: [RadarChartDataEntry]
    
    func makeUIView(context: Context) -> RadarChartView {
        let radarChartView = RadarChartView()
        radarChartView.webLineWidth = 0.8
        radarChartView.innerWebLineWidth = 0.8
        return radarChartView
    }
    
    func updateUIView(_ uiView: RadarChartView, context: Context) {
        let dataSet = RadarChartDataSet(entries: entries)
        dataSet.colors = [NSUIColor.blue]
        dataSet.drawFilledEnabled = true
        dataSet.fillColor = NSUIColor.blue
        dataSet.fillAlpha = 0.3
        dataSet.lineWidth = 2
        
        let data = RadarChartData(dataSet: dataSet)
        uiView.data = data
    }
}

#Preview {
    TriangleRadarChartView(entries: Liquid.liquids[0].dataEnteries)
}
