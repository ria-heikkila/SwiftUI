//
//  FirstTab.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/13.
//

import SwiftUI

struct FirstTab: View {
    @Binding var tabSelection: Int
    @Binding var isNavigate: Bool
    
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.tabSelection = 2
                isNavigate.toggle()
            }, label: {
                FristTabBtn()
            })
        }
    }
}

struct FristTabBtn: View {
    
    var btnText = "Tap to see smth cool "
    
    var body: some View{
        HStack{
            Text(btnText)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
            
            Image(systemName: "hand.tap.fill").resizable()
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
    }
    
}
