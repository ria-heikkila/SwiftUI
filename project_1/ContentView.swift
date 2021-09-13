//
//  ContentView.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigate: Bool = false
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection){
            FirstTab(tabSelection: $tabSelection, isNavigate: $isNavigate)
                .tabItem {
                    Image(systemName: "1.circle.fill")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    
            }
            .tag(1)
            SecondTab(isNavigate: $isNavigate)
                .tabItem {
                Image(systemName: "2.circle.fill")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            }
            .tag(2)
            ThirdTab()
                .tabItem {
                    Image(systemName: "3.circle.fill")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            }
            .tag(3)
        }
        .accentColor(Color(.systemTeal))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
