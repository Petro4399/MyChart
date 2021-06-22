//
//  ContentView.swift
//  MyChart
//
//  Created by Petro Starychok on 12.03.2021.
//

import SwiftUI

struct MyChart: View {
    @State private var tapped = false
    @State private var animateChart = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("MyChart")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                (tapped ?
                    HStack(spacing: 5) {
                        Chart(value: modelA[0])
                        Chart(value: modelA[1])
                        Chart(value: modelA[2])
                        Chart(value: modelA[3])
                        Chart(value: modelA[4])
                        Chart(value: modelA[5])
                        Chart(value: modelA[6])
                } :
                    HStack(spacing: 5) {
                        Chart(value: modelB[0])
                        Chart(value: modelB[1])
                        Chart(value: modelB[2])
                        Chart(value: modelB[3])
                        Chart(value: modelB[4])
                        Chart(value: modelB[5])
                        Chart(value: modelB[6])
                    })
                    .onTapGesture {
                        self.tapped.toggle()
                    }
                .animation(.easeInOut(duration: 5))
            }
            .padding(.horizontal, 15.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyChart()
    }
}



