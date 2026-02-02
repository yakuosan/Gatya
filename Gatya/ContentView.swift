//
//  ContentView.swift
//  Gatya
//
//  Created by 阪上八雲 on 2026/02/03.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        ZStack {
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button{
                showSheet = true 
            }label:{
                Image("Presentbox")
                    .resizable()
                    .scaledToFit()
            }
        }
        .fullScreenCover(isPresented: $showSheet){
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
