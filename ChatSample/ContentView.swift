//
//  ContentView.swift
//  ChatSample
//
//  Created by 長谷侑弥 on 2022/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleRow()
        }
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
