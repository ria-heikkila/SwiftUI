//
//  SecondTab.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI

struct SecondTab: View {
    
    var body: some View {
        NavigationView{
            Content()
        }
    }
}

struct Content: View {
    
    @State var title = "Items"
    
    var body: some View {
        List(1..<20) { index in
            NavigationLink(destination: Text("View number \(index)")) {
                Text("Item \(index)")
            }
        }.navigationBarTitle(Text(title))
    }
}

struct SecondTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondTab()
    }
}
