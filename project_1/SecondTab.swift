//
//  SecondTab.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI

struct SecondTab: View {
    
    @Binding var isNavigate: Bool
    var title = "Items"
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: Text("Item 1"),
                    isActive: $isNavigate,
                    label: {
                        Text("Item 1")
                    })
                NavigationLink(
                    destination: Text("Item 2"),
                    label: {
                        Text("Item 2")
                    })
                NavigationLink(
                    destination: Text("Item 3"),
                    label: {
                        Text("Item 3")
                    })
            }.navigationBarTitle(Text(title))
        }
    }
}
