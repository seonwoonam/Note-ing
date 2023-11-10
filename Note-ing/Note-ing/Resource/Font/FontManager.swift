//
//  FontManager.swift
//  Note-ing
//
//  Created by 윤지성 on 2023/11/10.
//

import Foundation
import SwiftUI

extension Font {
    enum Pretendard {
        case extraBold
        case bold
        case semibold
        case medium
        case regular
        case custom(String)
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Reqular"
            case .custom(let name):
                return name
            }
        }
    }

    static func pretendard(_ type: Pretendard, size: CGFloat = 17) -> Font {
        return .custom(type.value, size: size)
    }
}
