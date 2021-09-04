//
//  ThirdTab.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI

struct ThirdTab: View {
    
    @State var btnText = "Жми сюда!"
    @State var url = "https://fuckingswiftui.com/"
    @State var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemIndigo)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Message()
                Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text(btnText)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
            })
            }
            .sheet(isPresented: $isPresented, content: {
                let model = WebViewModel(stringUrl: url)
                WebView(viewModel: model)
            })
        }
    }
}

struct Message: View {
    @State var text = "Хочешь увидеть любимый сайт Ексея??"
    
    var body: some View {
        Text(text)
            .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTab()
    }
}
