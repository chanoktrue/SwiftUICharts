//
//  ContentView.swift
//  SwiftUIChartFromGitHub
//
//  Created by Thongchai Subsaidee on 4/8/2564 BE.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            AreaView()
            
            LineView()
            
            ColumnView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AreaView: View {
    var body: some View {
        Chart(data: [
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1
        ])
            .chartStyle(
                AreaChartStyle(.quadCurve, fill:
                    LinearGradient(gradient: .init(colors: [Color.blue.opacity(0.2), Color.blue.opacity(0.05)]), startPoint: .top, endPoint: .bottom)
                )
            )

    }
}

struct LineView: View {
    var body: some View {
        Chart(data: [
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1
        ])
            .chartStyle(
                LineChartStyle(.quadCurve, lineColor: .blue, lineWidth: 5)
            )
    }
}

struct ColumnView: View {
    var body: some View {
        Chart(data: [
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1,
            0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1
        ])
            .chartStyle(
                ColumnChartStyle(column: Capsule().foregroundColor(.green), spacing: 2)
            )
    }
}
