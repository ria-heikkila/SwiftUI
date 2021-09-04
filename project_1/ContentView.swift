//
//  ContentView.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstTab()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    
                }
            SecondTab()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
        }.accentColor(Color(.systemTeal))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
