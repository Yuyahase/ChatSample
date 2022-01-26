//
//  ContentView.swift
//  ChatSample
//
//  Created by 長谷侑弥 on 2022/01/26.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello you", "Hello World", "test", "testText" ]

    var body: some View {
        VStack {
            TitleRow()
            ScrollView{
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "123", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
            .cornerRadisu(30, corners: [.topLeft, .topRight])
        }
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
