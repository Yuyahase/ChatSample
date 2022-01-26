//
//  Extension.swift
//  ChatSample
//
//  Created by 長谷侑弥 on 2022/01/26.
//

import Foundation
import SwiftUI

// Extension for adding rounded corners in specific corners
extension View {
    func cornerRadisu(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

// Custom RoundedCorner shape used for cornerRadius extension above
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners:  corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
