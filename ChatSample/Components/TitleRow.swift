//
//  TitleRow.swift
//  ChatSample
//
//  Created by 長谷侑弥 on 2022/01/26.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8%22")
    var name = "Kotomi Takahashi"

    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }

            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()

                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            .frame(maxWidth: .infinity, alignment: .leading)


            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(10)
            
        }
        .padding()

    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
