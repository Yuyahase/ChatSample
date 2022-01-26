//
//  Message.swift
//  ChatSample
//
//  Created by 長谷侑弥 on 2022/01/26.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
