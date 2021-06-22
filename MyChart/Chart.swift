//
//  ChartMockData.swift
//  MyChart
//
//  Created by Petro Starychok on 18.03.2021.
//

import SwiftUI

struct Chart: View {
    var value: CGFloat
    var body: some View {
        VStack {
            GeometryReader { geo in
                ZStack(alignment: .bottom) {
                    Rectangle().frame(minWidth: 40, idealWidth: 45, maxWidth: .infinity, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .center)
                        .foregroundColor(.gray)
                    Rectangle().frame(minWidth: 40, idealWidth: 45, maxWidth: .infinity, minHeight: value, idealHeight: value, maxHeight: value, alignment: .center)
                        .foregroundColor(.black)
                    }
                .frame(width: geo.size.width)
            }
        }
    }
}
